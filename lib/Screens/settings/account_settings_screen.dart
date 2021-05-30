import 'package:coffee_ecommerce/Components/page_title.dart';
import 'package:coffee_ecommerce/Theme/colors.dart';
import 'package:flutter/material.dart';

class AccountSettings extends StatefulWidget {
  @override
  _AccountSettingsState createState() => _AccountSettingsState();
}

class _AccountSettingsState extends State<AccountSettings> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        color: PColor.secondColor,
        child: Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Page_Title(
                  wid2: width, txt: "Account Settings", icon: Icons.person),
              Container(
                padding: EdgeInsets.only(left: 10),
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name Surname",
                      style: TextStyle(fontSize: 18, color: PColor.mainColor),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Example@gmail.com",
                      style: TextStyle(fontSize: 18, color: PColor.mainColor),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: width - 30,
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: "Name",
                                icon: Icon(
                                  Icons.person,
                                  color: PColor.mainColor,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: const BorderRadius.all(
                                    const Radius.circular(10.0),
                                  ),
                                  borderSide: BorderSide(
                                    color: PColor.mainColor,
                                  ),
                                ),
                              ),
                            ),
                            margin: EdgeInsets.all(10),
                          ),
                          Container(
                            width: width - 30,
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.email,
                                    color: PColor.mainColor,
                                  ),
                                  labelText: "Email",
                                  border: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                      borderSide: BorderSide(
                                        color: PColor.mainColor,
                                      ))),
                            ),
                            margin: EdgeInsets.all(10),
                          ),
                          Container(
                            width: width - 30,
                            height: 50,
                            child: TextField(
                              decoration: InputDecoration(
                                  icon: Icon(
                                    Icons.phone,
                                    color: PColor.mainColor,
                                  ),
                                  labelText: "Phone Number",
                                  border: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(10.0),
                                      ),
                                      borderSide: BorderSide(
                                        color: PColor.mainColor,
                                      ))),
                            ),
                            margin: EdgeInsets.all(10),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Container(
                    width: width / 3,
                    height: height / 14,
                    color: Colors.transparent,
                    child: Center(
                        child: TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shadowColor:
                            MaterialStateProperty.all(Colors.transparent),
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                      ),
                      onPressed: () => Navigator.pop(context),
                      child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.arrow_back_ios_sharp,
                                    color: PColor.mainColor,
                                  ),
                                  Text(
                                    "Back",
                                    style: TextStyle(
                                        color: PColor.mainColor, fontSize: 15),
                                  ),
                                ],
                              ),
                            ],
                          ))),
                    )),
                  ),
                  Container(
                    width: width - width / 3,
                    height: height / 14,
                    color: Colors.transparent,
                    child: Center(
                        child: TextButton(
                      style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shadowColor:
                            MaterialStateProperty.all(Colors.transparent),
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                      ),
                      onPressed: () => print("Save Changes"),
                      child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                              color: PColor.mainColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Save Changes",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    color: PColor.secondColor,
                                  )
                                ],
                              ),
                            ],
                          ))),
                    )),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
