import 'package:coffee_ecommerce/Theme/colors.dart';
import 'package:flutter/material.dart';

class Shopping extends StatelessWidget {
  Widget textPadding(letter, size) {
    return Text(
      letter,
      style: TextStyle(fontSize: size, color: PColor.secondColor),
    );
  }

  @override
  Widget build(BuildContext context) {
    int i = 0;
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
          width: width - (width / 6),
          height: height,
          color: PColor.secondColor,
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
              var images = ["assets/1.jpg", "assets/2.jpg", "assets/3.jpg"];
              i++;
              if (i == 3) {
                i = 0;
              }

              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        margin: index == 0
                            ? EdgeInsets.only(top: 70)
                            : EdgeInsets.only(top: 10),
                        width: width - (width / 4),
                        height: height / 4,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(images[i]),
                                fit: BoxFit.cover),
                            color: Colors.black,
                            borderRadius:
                                BorderRadius.all(Radius.circular(30.0))),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 100),
                        width: (width / 5),
                        height: height / 20,
                        decoration: BoxDecoration(
                            color: PColor.mainColor.withOpacity(0.9),
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(30.0))),
                        child: Center(
                          child: Text(
                            "240 TL",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 2),
                    width: width - (width / 4),
                    height: height / 15,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Center(
                      child: Text(
                        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 1),
                    width: width - (width / 4),
                    height: height / 15,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Btns(
                          height: height,
                          icon: Icons.favorite,
                          width: (width - (width / 4)) / 5,
                        ),
                        Btns(
                          height: height,
                          icon: Icons.remove_red_eye,
                          width: (width - (width / 4)) / 5,
                        ),
                        Btns(
                          height: height,
                          icon: Icons.add_shopping_cart_rounded,
                          width: (width - (width / 4)) / 3,
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          )),
    );
  }
}

class Btns extends StatelessWidget {
  const Btns({
    Key key,
    @required this.height,
    @required this.icon,
    @required this.width,
  }) : super(key: key);

  final double height;
  final double width;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: null,
      child: Container(
          width: width,
          height: height / 12,
          decoration: BoxDecoration(
              color: PColor.btnColor,
              borderRadius: BorderRadius.all(Radius.circular(100.0))),
          child: Icon(
            icon,
            color: Colors.white,
          )),
    );
  }
}
