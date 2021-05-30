import 'package:coffee_ecommerce/Theme/colors.dart';
import 'package:flutter/material.dart';

class BtnRow extends StatelessWidget {
  const BtnRow({
    Key key,
    @required this.icon,
    @required this.width,
    @required this.title,
    @required this.des,
    @required this.iconButton,
  }) : super(key: key);

  final double width;
  final String title;
  final String des;
  final IconData icon;
  final Widget iconButton;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: width / 6,
          height: 50,
          color: Colors.transparent,
          child: Icon(
            icon,
            color: PColor.mainColor,
          ),
        ),
        Expanded(
          child: Container(
            width: width / 4,
            height: 50,
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 17, color: PColor.mainColor),
                ),
                Text(
                  des,
                  style: TextStyle(fontSize: 15, color: PColor.btnColor),
                ),
              ],
            ),
          ),
        ),
        Container(
          width: width / 6,
          height: 50,
          color: Colors.transparent,
          child: iconButton,
        )
      ],
    );
  }
}
