import 'package:coffee_ecommerce/Screens/cart_screen.dart';
import 'package:coffee_ecommerce/Screens/personal_screen.dart';
import 'package:coffee_ecommerce/Screens/settings_screen.dart';
import 'package:coffee_ecommerce/Screens/shopping_screen.dart';
import 'package:coffee_ecommerce/Theme/colors.dart';
import 'package:flutter/material.dart';

import 'circular_button.dart';

class SideBar extends StatefulWidget {
  final Widget newChild;
  SideBar({
    @required this.newChild,
  });
  @override
  _SideBarState createState() => _SideBarState(newChild: newChild);
}

class _SideBarState extends State<SideBar> with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation degOneTranslationAnimation,
      degTwoTranslationAnimation,
      degThreeTranslationAnimation;
  Animation rotationAnimation;
  Animation<double> _animateIcon;
  Widget newChild;
  _SideBarState({@required this.newChild});
  double getRadiansFromDegree(double degree) {
    double unitRadian = 57.295779513;
    return degree / unitRadian;
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 250));
    _animateIcon =
        Tween<double>(begin: 0.0, end: 1.0).animate(animationController);
    degOneTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.0, end: 1.2), weight: 75.0),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1.2, end: 1.0), weight: 25.0),
    ]).animate(animationController);
    degTwoTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.0, end: 1.4), weight: 55.0),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1.4, end: 1.0), weight: 45.0),
    ]).animate(animationController);
    degThreeTranslationAnimation = TweenSequence([
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 0.0, end: 1.75), weight: 35.0),
      TweenSequenceItem<double>(
          tween: Tween<double>(begin: 1.75, end: 1.0), weight: 65.0),
    ]).animate(animationController);
    rotationAnimation = Tween<double>(begin: 180.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController, curve: Curves.easeOut));
    super.initState();
    animationController.addListener(() {
      setState(() {});
    });
  }

  Widget textPadding(letter, size) {
    return Text(
      letter,
      style: TextStyle(fontSize: size, color: PColor.secondColor),
    );
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: width - (width / 6),
            height: height,
            child: Container(
              color: Colors.transparent,
              child: SafeArea(
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    newChild,
                    animationController.isAnimating ||
                            animationController.isCompleted
                        ? Container(
                            width: width - (width / 6),
                            height: height,
                            color: PColor.mainColor.withOpacity(0.4),
                          )
                        : SizedBox(),
                    SafeArea(
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                              left: 5,
                              top: 5,
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: <Widget>[
                                  IgnorePointer(
                                    child: Container(
                                      color: Colors.transparent,
                                      height: 150.0,
                                      width: 150.0,
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset.fromDirection(
                                        getRadiansFromDegree(0),
                                        degOneTranslationAnimation.value * 110),
                                    child: Transform(
                                      transform: Matrix4.rotationZ(
                                          getRadiansFromDegree(
                                              rotationAnimation.value))
                                        ..scale(
                                            degOneTranslationAnimation.value),
                                      alignment: Alignment.center,
                                      child: CircularButton(
                                        color: PColor.mainColor,
                                        width: 50,
                                        height: 50,
                                        icon: Icon(
                                          Icons.settings,
                                          color: Colors.white,
                                        ),
                                        onClick: () {
                                          setState(() {
                                            newChild = Settings();
                                            animationController.reverse();
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset.fromDirection(
                                        getRadiansFromDegree(30),
                                        degTwoTranslationAnimation.value * 110),
                                    child: Transform(
                                      transform: Matrix4.rotationZ(
                                          getRadiansFromDegree(
                                              rotationAnimation.value))
                                        ..scale(
                                            degTwoTranslationAnimation.value),
                                      alignment: Alignment.center,
                                      child: CircularButton(
                                        color: PColor.mainColor,
                                        width: 50,
                                        height: 50,
                                        icon: Icon(
                                          Icons.home,
                                          color: Colors.white,
                                        ),
                                        onClick: () {
                                          setState(() {
                                            newChild = Shopping();
                                            animationController.reverse();
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset.fromDirection(
                                        getRadiansFromDegree(60),
                                        degThreeTranslationAnimation.value *
                                            110),
                                    child: Transform(
                                      transform: Matrix4.rotationZ(
                                          getRadiansFromDegree(
                                              rotationAnimation.value))
                                        ..scale(
                                            degThreeTranslationAnimation.value),
                                      alignment: Alignment.center,
                                      child: CircularButton(
                                        color: PColor.mainColor,
                                        width: 50,
                                        height: 50,
                                        icon: Icon(
                                          Icons.shopping_cart_rounded,
                                          color: Colors.white,
                                        ),
                                        onClick: () {
                                          setState(() {
                                            newChild = Cart();
                                            animationController.reverse();
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: Offset.fromDirection(
                                        getRadiansFromDegree(90),
                                        degThreeTranslationAnimation.value *
                                            110),
                                    child: Transform(
                                      transform: Matrix4.rotationZ(
                                          getRadiansFromDegree(
                                              rotationAnimation.value))
                                        ..scale(
                                            degThreeTranslationAnimation.value),
                                      alignment: Alignment.center,
                                      child: CircularButton(
                                        color: PColor.mainColor,
                                        width: 50,
                                        height: 50,
                                        icon: Icon(
                                          Icons.person,
                                          color: Colors.white,
                                        ),
                                        onClick: () {
                                          setState(() {
                                            newChild = Personal();
                                            animationController.reverse();
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  Transform(
                                    transform: Matrix4.rotationZ(
                                        getRadiansFromDegree(
                                            rotationAnimation.value)),
                                    alignment: Alignment.center,
                                    child: CircularButton(
                                      color: PColor.mainColor,
                                      width: 60,
                                      height: 60,
                                      aicon: AnimatedIcon(
                                        progress: animationController,
                                        icon: AnimatedIcons.list_view,
                                        color: Colors.white,
                                      ),
                                      onClick: () {
                                        if (animationController.isCompleted) {
                                          animationController.reverse();
                                        } else {
                                          animationController.forward();
                                        }
                                      },
                                    ),
                                  )
                                ],
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width / 6,
                height: height,
                color: PColor.mainColor,
                child: SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                            icon: Center(
                              child: AnimatedIcon(
                                color: PColor.secondColor,
                                icon: AnimatedIcons.menu_close,
                                size: width / 7,
                                progress: _animateIcon,
                              ),
                            ),
                            onPressed: () {
                              if (animationController.isCompleted) {
                                animationController.reverse();
                              } else {
                                animationController.forward();
                              }
                            },
                            color: Colors.white,
                          ),
                        ],
                      ),
                      textPadding("C", height / 13),
                      textPadding("O", height / 13),
                      textPadding("F", height / 13),
                      textPadding("F", height / 13),
                      textPadding("E", height / 13),
                      textPadding("E", height / 13),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
