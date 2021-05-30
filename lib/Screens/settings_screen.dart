import 'package:coffee_ecommerce/Components/page_title.dart';
import 'package:coffee_ecommerce/Screens/settings/account_settings_screen.dart';
import 'package:coffee_ecommerce/Screens/settings/address_screen.dart';
import 'package:coffee_ecommerce/Screens/settings/notifications_screen.dart';
import 'package:coffee_ecommerce/Theme/colors.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var wid2 = (width - (width / 6)) / 1.3;
    return Container(
      width: width - (width / 6),
      height: height,
      color: PColor.secondColor,
      child: Padding(
        padding: const EdgeInsets.only(top: 70.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Page_Title(
              wid2: wid2,
              txt: "Settings",
              icon: Icons.settings,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      width: 20,
                      height: height / 2.1,
                      decoration: BoxDecoration(
                          color: PColor.secondColor,
                          borderRadius: BorderRadius.all(Radius.circular(100))),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shadowColor:
                            MaterialStateProperty.all(Colors.transparent),
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AccountSettings()),
                        );
                      },
                      child: Text(
                        "Account setting",
                        style: TextStyle(color: PColor.btnColor, fontSize: 25),
                      ),
                    ),
                    Row(
                      children: [
                        TextButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all(Colors.transparent),
                            shadowColor:
                                MaterialStateProperty.all(Colors.transparent),
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Notifications()),
                            );
                          },
                          child: Text(
                            "Notifications",
                            style:
                                TextStyle(color: PColor.btnColor, fontSize: 25),
                          ),
                        ),
                        Icon(
                          Icons.circle_notifications,
                          color: PColor.mainColor,
                        ),
                      ],
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shadowColor:
                            MaterialStateProperty.all(Colors.transparent),
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Address()),
                        );
                      },
                      child: Text(
                        "Address",
                        style: TextStyle(color: PColor.btnColor, fontSize: 25),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shadowColor:
                            MaterialStateProperty.all(Colors.transparent),
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                      ),
                      onPressed: () => print("App Settings"),
                      child: Text(
                        "App Settings",
                        style: TextStyle(color: PColor.btnColor, fontSize: 25),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shadowColor:
                            MaterialStateProperty.all(Colors.transparent),
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                      ),
                      onPressed: () => print("Orders"),
                      child: Text(
                        "Orders",
                        style: TextStyle(color: PColor.btnColor, fontSize: 25),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shadowColor:
                            MaterialStateProperty.all(Colors.transparent),
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                      ),
                      onPressed: () => print("Coupons"),
                      child: Text(
                        "Coupons",
                        style: TextStyle(color: PColor.btnColor, fontSize: 25),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shadowColor:
                            MaterialStateProperty.all(Colors.transparent),
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                      ),
                      onPressed: () => print("Favorite"),
                      child: Text(
                        "Favorite",
                        style: TextStyle(color: PColor.btnColor, fontSize: 25),
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shadowColor:
                            MaterialStateProperty.all(Colors.transparent),
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                      ),
                      onPressed: () => print("My History with Coffee"),
                      child: Text(
                        "My History with Coffee",
                        style: TextStyle(color: PColor.btnColor, fontSize: 25),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: height / 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all(Colors.transparent),
                      shadowColor:
                          MaterialStateProperty.all(Colors.transparent),
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                    ),
                    onPressed: () => print("call center"),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.call_outlined,
                          color: PColor.mainColor,
                          size: 25,
                        ),
                        Padding(padding: EdgeInsets.only(left: 5)),
                        Text(
                          "Call support",
                          style:
                              TextStyle(color: PColor.mainColor, fontSize: 20),
                        ),
                      ],
                    )),
                TextButton(
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    shadowColor: MaterialStateProperty.all(Colors.transparent),
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  onPressed: () => print("Logout"),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.logout,
                        color: PColor.mainColor,
                        size: 25,
                      ),
                      Padding(padding: EdgeInsets.only(left: 5)),
                      Text(
                        "Logout",
                        style: TextStyle(color: PColor.mainColor, fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
