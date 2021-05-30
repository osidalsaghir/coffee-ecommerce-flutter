import 'package:coffee_ecommerce/Components/page_title.dart';
import 'package:coffee_ecommerce/Theme/colors.dart';
import 'package:flutter/material.dart';

class Personal extends StatefulWidget {
  @override
  _PersonalState createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Page_Title(wid2: wid2, txt: "Personal", icon: Icons.person),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 12),
                    width: 80,
                    height: 20,
                    color: PColor.btnColor.withOpacity(0.2),
                    child: Center(
                      child: Text(
                        "Order",
                        style: TextStyle(color: PColor.mainColor),
                      ),
                    ),
                  ),
                  Container(
                    width: width,
                    height: height / 2,
                    color: PColor.mainColor.withOpacity(0.08),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 12),
                          height: height / 2,
                          child: ListView.builder(
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: EdgeInsets.only(top: 3, bottom: 4),
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
                                                "Lorem ipsum dolor sit amet, ",
                                                style: TextStyle(fontSize: 12),
                                                textAlign: TextAlign.center,
                                              ),
                                              Text(
                                                "127.0 TL",
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
                                            Text(
                                              "x 2",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontSize: 25),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
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
                  width: width / 6,
                  height: 50,
                  color: Colors.transparent,
                  child: Icon(
                    Icons.location_on_outlined,
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
                          "park",
                          style:
                              TextStyle(fontSize: 17, color: PColor.mainColor),
                        ),
                        Text(
                          "Street Name (City)",
                          style:
                              TextStyle(fontSize: 15, color: PColor.btnColor),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: width / 6,
                  height: 50,
                  color: Colors.transparent,
                  child: Icon(
                    Icons.edit,
                    color: PColor.mainColor,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: width / 6,
                  height: 50,
                  color: Colors.transparent,
                  child: Icon(
                    Icons.confirmation_number_outlined,
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
                          "coupons",
                          style:
                              TextStyle(fontSize: 17, color: PColor.mainColor),
                        ),
                        Text(
                          "Add coupon ",
                          style:
                              TextStyle(fontSize: 15, color: PColor.btnColor),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: width / 6,
                  height: 50,
                  color: Colors.transparent,
                  child: Icon(
                    Icons.add_circle_outline_outlined,
                    color: PColor.mainColor,
                  ),
                )
              ],
            ),
            Container(
              width: width,
              height: height / 14,
              color: Colors.transparent,
              child: Center(
                  child: TextButton(
                onPressed: () => print("order"),
                child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                        color: PColor.mainColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Total : ",
                              style: TextStyle(
                                  color: PColor.secondColor, fontSize: 20),
                            ),
                            Text(
                              "100.97 Tl",
                              style: TextStyle(
                                  color: PColor.secondColor, fontSize: 20),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "ok",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
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
      ),
    );
  }
}
