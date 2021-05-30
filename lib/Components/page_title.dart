import 'package:coffee_ecommerce/Theme/colors.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Page_Title extends StatelessWidget {
  const Page_Title({
    Key key,
    @required this.wid2,
    @required this.txt,
    @required this.icon,
  }) : super(key: key);

  final double wid2;
  final String txt;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      width: wid2 + 20,
      height: 80,
      decoration: BoxDecoration(
          color: PColor.secondColor,
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            txt,
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 38, color: PColor.btnColor),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            icon,
            size: 45,
            color: PColor.mainColor,
          ),
        ],
      ),
    );
  }
}
