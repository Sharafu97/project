import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deliveryapp/orders.dart';

import 'customitems.dart';
import 'package:dotted_line/dotted_line.dart';

class MyHomepage extends StatefulWidget {
  Homepage createState() => Homepage();
}

class Homepage extends State {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => NavBarContainer()));
                        },
                      ),
                      Text(
                        'Dash board',
                        style: textStyle(
                            18, 'Poppins', kcSecondaryColor, FontWeight.w700),
                      ),
                    ],
                  )),
                  IconButton(
                      icon: Icon(Icons.notifications_none_outlined),
                      onPressed: () {})
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Hi Name!!',
                      style: textStyle(
                          18, 'Poppins', kcSecondaryColor, FontWeight.w700),
                    ),
                    Text(
                      'Have a great day ahead !',
                      style: textStyle(
                          12, 'Poppins', Color(0xff686B6B), FontWeight.w400),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'New orders..',
                      style: textStyle(
                          18, 'Poppins', kcSecondaryColor, FontWeight.w700),
                    ),
                  ]),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 10, left: 30, right: 30),
                      child: GestureDetector(
                        onTap: () {
                          print('chekking');
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => OrderDetails()));
                        },
                        child: Container(
                          height: 200,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Orders',
                                      style: textStyle(12, 'Poppins',
                                          kcSecondaryColor, FontWeight.w700),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          'Order details',
                                          style: textStyle(
                                              10,
                                              'poppins',
                                              kcMediumGreyColor,
                                              FontWeight.w400),
                                        ),
                                        Text(
                                          'dd mm yy|00:00',
                                          style: textStyle(
                                              9,
                                              'poppins',
                                              Color(0xffBCBBBB),
                                              FontWeight.w500),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                height: 120,
                                child: Row(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.only(bottom: 25),
                                      // color: Colors.blue,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            // color: Colors.red,
                                            child: Container(
                                              height: 12,
                                              width: 12,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  border: Border.all(
                                                    color: Colors.red,
                                                    width: 3,
                                                  )),
                                            ),
                                          ),
                                          Flexible(
                                            child: DottedLine(
                                              direction: Axis.vertical,
                                              lineLength: 35,
                                              lineThickness: 1.0,
                                              dashLength: 1.0,
                                              dashColor: Colors.black,
                                              dashRadius: 0.0,
                                              dashGapLength: 1.0,
                                              dashGapColor: Colors.transparent,
                                              dashGapRadius: 0.0,
                                            ),
                                          ),
                                          Container(
                                            // color: Colors.yellow,
                                            child: Icon(
                                              Icons.room_rounded,
                                              color: Colors.red,
                                              size: 20,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          child: Column(
                                            children: [
                                              Text(
                                                'Pick up point',
                                                style: textStyle(
                                                    9,
                                                    'poppins',
                                                    kcGreyLightColor,
                                                    FontWeight.w500),
                                              ),
                                              Text(
                                                'Name',
                                                style: textStyle(
                                                    12,
                                                    'poppins',
                                                    kcSecondaryColor,
                                                    FontWeight.w500),
                                              ),
                                              Text(
                                                'Address',
                                                style: textStyle(
                                                    10,
                                                    'poppins',
                                                    kcSecondaryColor,
                                                    FontWeight.w300),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          child: Column(
                                            children: [
                                              Text(
                                                'Delivery POint',
                                                style: textStyle(
                                                    9,
                                                    'poppins',
                                                    kcGreyLightColor,
                                                    FontWeight.w500),
                                              ),
                                              Text(
                                                'Name',
                                                style: textStyle(
                                                    12,
                                                    'poppins',
                                                    kcSecondaryColor,
                                                    FontWeight.w500),
                                              ),
                                              Text(
                                                'Address',
                                                style: textStyle(
                                                    10,
                                                    'poppins',
                                                    kcSecondaryColor,
                                                    FontWeight.w300),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          'Payment',
                                          style: textStyle(
                                              10,
                                              'Poppins',
                                              kcGreyLightColor,
                                              FontWeight.w500),
                                        ),
                                        Text(
                                          '₹ 250',
                                          style: textStyle(
                                              12,
                                              'Poppins',
                                              kcSecondaryColor,
                                              FontWeight.w600),
                                        )
                                      ],
                                    ),
                                    Container(
                                      height: 30,
                                      width: 100,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        color: kcPrimaryColor,
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      child: Text(
                                        'Accepted',
                                        style: textStyle(12, 'Poppins',
                                            Colors.white, FontWeight.w500),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      )),
      // bottomNavigationBar: NavBar(),
    );
  }
}
