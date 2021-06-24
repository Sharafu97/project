import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'customitems.dart';
import 'package:dotted_line/dotted_line.dart';

class Orders extends StatefulWidget {
  _Orders createState() => _Orders();
}

class _Orders extends State {
  Widget build(BuildContext contaxt) {
    var count = Details().buttonCounter;
    String text;
    switch (count) {
      case 1:
        text = 'not accept';
        break;
      case 2:
        text = 'picked';
        break;
      case 3:
        text = 'deliverd';
        break;
    }
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
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => NavBarContainer()));
                      }),
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
                      child: GestureDetector(
                        onTap: () {
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
                                        text,
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
                      // child: GestureDetector(
                      //   onTap: () {
                      //     Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: (context) => OrderDetails()));
                      //   },
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
                                  Container(
                                    padding: EdgeInsets.only(bottom: 25),
                                    // color: Colors.blue,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
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
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Text(
                                      'Deleverd',
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
                      // ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}

class OrderDetails extends StatefulWidget {
  Details createState() => Details();
}

class Details extends State {
  var buttonCounter = 0;
  var buttonText = 'Accept';
  // void initState() {
  //   super.initState();
  //   var buttonCounter=0;
  //   var buttonText = 'Accept';
  // }

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
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  Text(
                    'Order Detail',
                    style: textStyle(
                        18, 'Poppins', kcSecondaryColor, FontWeight.w700),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 30,
                  right: 30,
                ),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Oeders',
                          style: textStyle(
                              12, 'Poppins', kcSecondaryColor, FontWeight.w700),
                        ),
                        Column(
                          children: [
                            Text(
                              'Oeder Details',
                              style: textStyle(10, 'Poppins', kcMediumGreyColor,
                                  FontWeight.w400),
                            ),
                            Text(
                              'Oeder Details',
                              style: textStyle(10, 'Poppins', Color(0xffbcbbbb),
                                  FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 200,
                      // color: Colors.blue,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 15,
                                width: 15,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.red,
                                      width: 4,
                                    )),
                              ),
                              Flexible(
                                child: DottedLine(
                                  direction: Axis.vertical,
                                  lineLength: double.infinity,
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
                                alignment: Alignment.topCenter,
                                width: 25,
                                height: 100,
                                // color: Colors.orange,
                                child: Icon(
                                  Icons.room_rounded,
                                  color: Colors.red,
                                  size: 25,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                alignment: Alignment.topLeft,
                                height: 100,
                                width: 200,
                                // color: Colors.red,
                                child: Column(
                                  children: [
                                    Text(
                                      'Pick up point',
                                      style: textStyle(18, 'poppins',
                                          kcSecondaryColor, FontWeight.w600),
                                    ),
                                    Text(
                                      'Name',
                                      style: textStyle(14, 'poppins',
                                          kcSecondaryColor, FontWeight.w500),
                                    ),
                                    Text(
                                      'Address',
                                      style: textStyle(14, 'poppins',
                                          kcGreyLightColor, FontWeight.w500),
                                    ),
                                    Text(
                                      'Address',
                                      style: textStyle(14, 'poppins',
                                          kcGreyLightColor, FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                height: 100,
                                width: 200,
                                // color: Colors.redAccent,
                                child: Column(
                                  children: [
                                    Text(
                                      'Delivery point',
                                      style: textStyle(18, 'poppins',
                                          kcSecondaryColor, FontWeight.w600),
                                    ),
                                    Text(
                                      'Name',
                                      style: textStyle(14, 'poppins',
                                          kcSecondaryColor, FontWeight.w500),
                                    ),
                                    Text(
                                      'Address',
                                      style: textStyle(14, 'poppins',
                                          kcGreyLightColor, FontWeight.w500),
                                    ),
                                    Text(
                                      'Address',
                                      style: textStyle(14, 'poppins',
                                          kcGreyLightColor, FontWeight.w500),
                                    ),
                                    Text(
                                      'Address',
                                      style: textStyle(14, 'poppins',
                                          kcGreyLightColor, FontWeight.w500),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                width: 75,
                                height: 100,
                                // color: Colors.white,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {},
                                        child: Text('Call'),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.green,
                                          minimumSize: Size(50, 30),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(40)),
                                          ),
                                        )),
                                    Container(
                                        decoration: BoxDecoration(
                                            color: kcGreyLightColor,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Icon(
                                            Icons
                                                .subdirectory_arrow_right_sharp,
                                            color: Colors.white))
                                  ],
                                ),
                              ),
                              Container(
                                width: 75,
                                height: 100,
                                // color: Colors.yellow,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {},
                                        child: Text('Call'),
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.green,
                                          minimumSize: Size(50, 30),
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(40)),
                                          ),
                                        )),
                                    Container(
                                        decoration: BoxDecoration(
                                            color: kcGreyLightColor,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Icon(
                                            Icons
                                                .subdirectory_arrow_right_sharp,
                                            color: Colors.white))
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 400,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Item details',
                            style: textStyle(12, 'poppins', kcSecondaryColor,
                                FontWeight.w700),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Itemset',
                                    style: textStyle(12, 'poppins',
                                        kcMediumGreyColor, FontWeight.w600),
                                  ),
                                  Text(
                                    'qty',
                                    style: textStyle(10, 'poppins',
                                        Color(0xffb4b4b4), FontWeight.w400),
                                  ),
                                ],
                              ),
                              Text(
                                '000.00',
                                style: textStyle(
                                    12, 'poppins', kcRedColor, FontWeight.w600),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Itemset',
                                    style: textStyle(12, 'poppins',
                                        kcMediumGreyColor, FontWeight.w600),
                                  ),
                                  Text(
                                    'qty',
                                    style: textStyle(10, 'poppins',
                                        Color(0xffb4b4b4), FontWeight.w400),
                                  ),
                                ],
                              ),
                              Text(
                                '000.00',
                                style: textStyle(
                                    12, 'poppins', kcRedColor, FontWeight.w600),
                              ),
                            ],
                          ),
                          Divider(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Item total',
                                style: textStyle(12, 'poppins',
                                    kcGreyLightColor, FontWeight.w500),
                              ),
                              Text(
                                '000.00',
                                style: textStyle(12, 'poppins',
                                    kcGreyLightColor, FontWeight.w500),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'GST',
                                style: textStyle(12, 'poppins',
                                    kcGreyLightColor, FontWeight.w500),
                              ),
                              Text(
                                '000.00',
                                style: textStyle(12, 'poppins',
                                    kcGreyLightColor, FontWeight.w500),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Minimum order charge',
                                style: textStyle(12, 'poppins',
                                    kcGreyLightColor, FontWeight.w500),
                              ),
                              Text(
                                '000.00',
                                style: textStyle(12, 'poppins',
                                    kcGreyLightColor, FontWeight.w500),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Promo Code',
                                style: textStyle(12, 'poppins',
                                    kcGreyLightColor, FontWeight.w500),
                              ),
                              Text(
                                '000.00',
                                style: textStyle(12, 'poppins',
                                    kcGreyLightColor, FontWeight.w500),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Distance fee',
                                style: textStyle(12, 'poppins',
                                    kcGreyLightColor, FontWeight.w500),
                              ),
                              Text(
                                '000.00',
                                style: textStyle(12, 'poppins',
                                    kcGreyLightColor, FontWeight.w500),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Errando charges',
                                style: textStyle(12, 'poppins',
                                    kcGreyLightColor, FontWeight.w500),
                              ),
                              Text(
                                '000.00',
                                style: textStyle(12, 'poppins',
                                    kcGreyLightColor, FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'TOTAL',
                                style: textStyle(18, 'poppins',
                                    kcGreyLightColor, FontWeight.w600),
                              ),
                              Text(
                                '000.00',
                                style: textStyle(24, 'poppins',
                                    kcGreyLightColor, FontWeight.w700),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Flexible(
                            child: DottedLine(
                              direction: Axis.horizontal,
                              lineLength: double.infinity,
                              lineThickness: 1.0,
                              dashLength: 1.0,
                              dashColor: kcRedColor,
                              dashRadius: 0.0,
                              dashGapLength: 1.0,
                              dashGapColor: Colors.transparent,
                              dashGapRadius: 0.0,
                            ),
                          ),
                          Text(
                            'Remarks:',
                            textAlign: TextAlign.center,
                            style: textStyle(12, 'poppins', kcGreyLightColor,
                                FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Payment Mode:',
                      textAlign: TextAlign.center,
                      style:
                          textStyle(12, 'poppins', kcRedColor, FontWeight.w500),
                    ),
                    Text(
                      'Payment to be collected',
                      textAlign: TextAlign.center,
                      style: textStyle(
                          16, 'poppins', kcSecondaryColor, FontWeight.w500),
                    ),
                    Text(
                      '₹ 250',
                      textAlign: TextAlign.center,
                      style:
                          textStyle(24, 'poppins', kcRedColor, FontWeight.w600),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ElevatedButton(
                              onPressed: () {},
                              child: Text('Cancel'),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.green,
                                minimumSize: Size(100, 30),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40)),
                                ),
                              )),
                          ElevatedButton(
                              onPressed: () {
                                buttonCounter += 1;
                                switch (buttonCounter) {
                                  case 1:
                                    setState(() {
                                      buttonText = 'Picked';
                                    });
                                    break;
                                  case 2:
                                    setState(() {
                                      buttonText = 'deliverd';
                                    });
                                    break;
                                  // case 3:
                                  //   setState(() {
                                  //     buttonText = 'deliverd';
                                  //   });
                                  //   break;
                                }
                              },
                              child: Text(buttonText),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.green,
                                minimumSize: Size(100, 30),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(40)),
                                ),
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
