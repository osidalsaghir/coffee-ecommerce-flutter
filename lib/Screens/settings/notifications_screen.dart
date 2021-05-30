import 'package:coffee_ecommerce/Components/page_title.dart';
import 'package:coffee_ecommerce/Theme/colors.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var wid2 = (width - (width / 6)) / 1.3;
    return Scaffold(
      body: Container(
        width: width,
        height: height,
        color: PColor.secondColor,
        child: Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Page_Title(
                  wid2: width,
                  txt: "Notifications",
                  icon: Icons.notifications_active_sharp),
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(5),
                              topRight: Radius.circular(5)),
                          color: PColor.btnColor.withOpacity(0.2),
                        ),
                        margin: EdgeInsets.only(left: 24),
                        width: 80,
                        height: 20,
                        child: Center(
                          child: Text(
                            "Order",
                            style: TextStyle(color: PColor.mainColor),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: PColor.mainColor.withOpacity(0.3),
                          ),
                          margin: EdgeInsets.only(left: 12, right: 12),
                          child: ListView.builder(
                              padding: EdgeInsets.zero,
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: EdgeInsets.only(
                                      left: 12, right: 12, top: 3),
                                  margin: EdgeInsets.all(0),
                                  color: index % 2 == 0
                                      ? PColor.mainColor.withOpacity(0.4)
                                      : Colors.transparent,
                                  width: wid2,
                                  height: 90,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: wid2 / 3,
                                        height: 80,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image:
                                                    AssetImage("assets/1.jpg"),
                                                fit: BoxFit.cover),
                                            color: PColor.mainColor,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                      ),
                                      Expanded(
                                        child: Container(
                                          width: wid2 / 2,
                                          height: 80,
                                          color: Colors.transparent,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Now this coffee has 20% off !!",
                                                style: TextStyle(fontSize: 12),
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                "120 Tl",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 25),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: wid2 / 6,
                                        height: 80,
                                        color: Colors.transparent,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            index % 2 == 0
                                                ? Icon(
                                                    Icons.notifications_active)
                                                : Icon(Icons
                                                    .notifications_active_outlined),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                        ),
                      )
                    ],
                  ),
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
                      onPressed: () => print("Mark all as readed"),
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
                                    "Mark all as readed",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.mark_chat_read_rounded,
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
