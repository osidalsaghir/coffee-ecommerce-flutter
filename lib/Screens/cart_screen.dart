import 'package:coffee_ecommerce/Components/page_title.dart';
import 'package:coffee_ecommerce/Components/row_icon_btn.dart';
import 'package:coffee_ecommerce/Theme/colors.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
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
            Page_Title(
                wid2: wid2, txt: "Cart", icon: Icons.shopping_cart_rounded),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
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
                  Container(
                    margin: EdgeInsets.only(left: 12, right: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: PColor.mainColor.withOpacity(0.3),
                    ),
                    width: width - 10 - width / 6,
                    height: height / 2,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 12, right: 12, top: 3),
                          height: height / 2,
                          child: ListView.builder(
                              itemCount: 10,
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
            BtnRow(
              width: width,
              title: "park",
              des: "Street Name (City)",
              icon: Icons.location_on_outlined,
              iconButton: IconButton(
                onPressed: () => print("edit"),
                icon: Icon(
                  Icons.edit,
                  color: PColor.mainColor,
                ),
              ),
            ),
            BtnRow(
              width: width,
              title: "Coupuns",
              des: "add new",
              icon: Icons.confirmation_number_outlined,
              iconButton: IconButton(
                onPressed: () => print("add"),
                icon: Icon(
                  Icons.add,
                  color: PColor.mainColor,
                ),
              ),
            ),
            Container(
              width: width,
              height: height / 14,
              color: Colors.transparent,
              child: Center(
                  child: TextButton(
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all(Colors.transparent),
                    shadowColor: MaterialStateProperty.all(Colors.transparent),
                    overlayColor:
                        MaterialStateProperty.all(Colors.transparent)),
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
