import 'package:coffee_ecommerce/Components/page_title.dart';
import 'package:coffee_ecommerce/Components/row_icon_btn.dart';
import 'package:coffee_ecommerce/Theme/colors.dart';
import 'package:coffee_ecommerce/main.dart';
import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  var values;

  void changevalue(Object value) {
    setState(() {
      values = value;
    });
  }

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
              Page_Title(wid2: width, txt: "Address", icon: Icons.location_on),
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
                        width: 120,
                        height: 20,
                        child: Center(
                          child: Text(
                            "My Address",
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
                              padding: EdgeInsets.fromLTRB(12, 5, 12, 0),
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: 50,
                                            height: 75,
                                            color: Colors.transparent,
                                            child: Radio(
                                              activeColor: Colors.black,
                                              focusColor: Colors.amber,
                                              value: index,
                                              groupValue: values,
                                              onChanged: changevalue,
                                              toggleable: true,
                                            ),
                                          ),
                                          Expanded(
                                            child: Container(
                                              height: 75,
                                              color: Colors.transparent,
                                              child: BtnRow(
                                                icon: Icons.home,
                                                width: width / 2,
                                                title: "Home",
                                                des: "Street Name",
                                                iconButton: IconButton(
                                                  onPressed: () =>
                                                      print("change address"),
                                                  icon: Icon(Icons.edit),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 50,
                                            height: 75,
                                            color: Colors.transparent,
                                            child: IconButton(
                                              icon: Icon(
                                                Icons.delete,
                                                color: Colors.red,
                                              ),
                                              onPressed: () => print("delete"),
                                            ),
                                          ),
                                        ],
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
              Page_Title(
                  wid2: width,
                  txt: "Add new address",
                  icon: Icons.add_circle_outline),
              Container(
                padding: EdgeInsets.only(left: 13, right: 13),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Add new work address",
                          style: TextStyle(fontSize: 20),
                        ),
                        Icon(Icons.add_circle_outline)
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Add new home address",
                          style: TextStyle(fontSize: 20),
                        ),
                        Icon(Icons.add_circle_outline)
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Add new park address",
                          style: TextStyle(fontSize: 20),
                        ),
                        Icon(Icons.add_circle_outline)
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
