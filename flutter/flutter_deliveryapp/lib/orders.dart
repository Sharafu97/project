import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customitems.dart';

class Orders extends StatefulWidget {
  _Orders createState() => _Orders();
}

class _Orders extends State {
  Widget build(BuildContext contaxt) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
              child: Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
                  Text(
                    'Orders',
                    style: textStyle(
                        18, 'Poppins', kcSecondaryColor, FontWeight.w700),
                  )
                ],
              ),
            ),
            Flexible(
              // flex: 2,
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 10, left: 30, right: 30),
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
                                        style: textStyle(10, 'poppins',
                                            kcMediumGreyColor, FontWeight.w400),
                                      ),
                                      Text(
                                        'dd mm yy|00:00',
                                        style: textStyle(9, 'poppins',
                                            Color(0xffBCBBBB), FontWeight.w500),
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
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
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
                                      Icon(
                                        Icons.room_rounded,
                                        color: Colors.red,
                                        size: 20,
                                      ),
                                    ],
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
                                        style: textStyle(10, 'Poppins',
                                            kcGreyLightColor, FontWeight.w500),
                                      ),
                                      Text(
                                        '₹ 250',
                                        style: textStyle(12, 'Poppins',
                                            kcSecondaryColor, FontWeight.w600),
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
                    );
                  }),
            ),
            // SizedBox(
            //   height: 50,
            // ),
            Container(
              padding: EdgeInsets.only(
                left: 30,
                right: 30,
                top: 30,
              ),
              child: Text(
                'Completed Orders',
                style:
                    textStyle(18, 'Poppins', kcSecondaryColor, FontWeight.w600),
              ),
            ),
            Flexible(
              // flex: 3,
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 10, left: 30, right: 30),
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
                                        style: textStyle(10, 'poppins',
                                            kcMediumGreyColor, FontWeight.w400),
                                      ),
                                      Text(
                                        'dd mm yy|00:00',
                                        style: textStyle(9, 'poppins',
                                            Color(0xffBCBBBB), FontWeight.w500),
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
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
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
                                      Icon(
                                        Icons.room_rounded,
                                        color: Colors.red,
                                        size: 20,
                                      ),
                                    ],
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
                                        style: textStyle(10, 'Poppins',
                                            kcGreyLightColor, FontWeight.w500),
                                      ),
                                      Text(
                                        '₹ 250',
                                        style: textStyle(12, 'Poppins',
                                            kcSecondaryColor, FontWeight.w600),
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
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
