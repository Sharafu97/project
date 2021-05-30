import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customitems.dart';

class Wallet extends StatefulWidget {
  MyWallet createState() => MyWallet();
}

class MyWallet extends State {
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
                    'Wallet',
                    style: textStyle(
                        18, 'Poppins', kcSecondaryColor, FontWeight.w700),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  Text(
                    '₹ 250/Cash',
                    style: textStyle(
                        24,
                        'Poppins',
                        //  kcRedColor,
                        Color(0xFFF15B4D),
                        FontWeight.w600),
                  ),
                  Text(
                    '₹ Payable ',
                    style: textStyle(
                        13, 'Poppins', kcGreyLightColor, FontWeight.w500),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    color: kcPrimaryColor,
                    title: 'Settle',
                    height: 30,
                    width: 100,
                    ontap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaymentSettlment()));
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
                // height: 30,
                ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0, right: 30),
              child: Text(
                'Transactions ',
                style:
                    textStyle(18, 'Poppins', kcPrimaryColor, FontWeight.w600),
              ),
            ),
            Flexible(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          height: 70,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Paid to shop',
                                    style: textStyle(12, 'Poppins',
                                        kcSecondaryColor, FontWeight.w500),
                                  ),
                                  Text(
                                    'dd mm yyyy | 00 00 ',
                                    style: textStyle(10, 'Poppins',
                                        Color(0xffbcbbbb), FontWeight.w500),
                                  ),
                                  Text(
                                    '₹ Payment mode ',
                                    style: textStyle(10, 'Poppins',
                                        Color(0xffbcbbbb), FontWeight.w500),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    '- ₹ 250',
                                    style: textStyle(14, 'Poppins',
                                        kcSecondaryColor, FontWeight.w600),
                                  ),
                                  Text(
                                    'cash/google pay ',
                                    style: textStyle(10, 'Poppins',
                                        Color(0xffbcbbbb), FontWeight.w500),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Divider()
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PaymentSettlment extends StatefulWidget {
  Payment createState() => Payment();
}

class Payment extends State {
  var currentvaluemode;
  Widget build(BuildContext contaxt) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          SizedBox(
            height: 30,
          ),
          Container(
            child: Row(
              children: [
                IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {}),
                Text(
                  'Wallet',
                  style: textStyle(
                      18, 'Poppins', kcSecondaryColor, FontWeight.w700),
                )
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 60,
            width: 150,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 1, color: kcPrimaryColor)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Ammount',
                  style: textStyle(
                      13, 'Poppins', kcGreyLightColor, FontWeight.w600),
                ),
                Text(
                  '₹ 250',
                  style: textStyle(24, 'Poppins', kcRedColor, FontWeight.w600),
                )
              ],
            ),
          ),
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.all(30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Paid to',
                      style: textStyle(
                          13, 'Poppins', kcGreyLightColor, FontWeight.w600),
                    ),
                    Text(
                      'Shope name',
                      style: textStyle(
                          13, 'Poppins', kcSecondaryColor, FontWeight.w600),
                    )
                  ],
                ),
                Divider(),
                SizedBox(
                  height: 20,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Paiment mode',
                        style: textStyle(
                            13, 'Poppins', kcGreyLightColor, FontWeight.w600),
                      ),
                      Flexible(
                        child: DropdownButton<String>(
                          icon: Icon(Icons.arrow_drop_down),
                          // isExpanded: true,
                          hint: Text(
                            'Payment mode',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          underline: SizedBox(),
                          items: ['cash', 'google pay']
                              .map((String dropDownStringItem) {
                            return DropdownMenuItem<String>(
                              value: dropDownStringItem,
                              child: Text(dropDownStringItem),
                            );
                          }).toList(),
                          onChanged: (String newvalue) {
                            // _dropdownList = [];
                            // materialdoc.forEach((element) {
                            //   if (element.sub.toLowerCase() ==
                            //       newvalue.toLowerCase()) {
                            //     _dropdownList.add(element);
                            //   }
                            // });
                            setState(() {
                              this.currentvaluemode = newvalue;
                            });
                          },
                          value: currentvaluemode,
                        ),
                      ),
                    ]),
                Divider(),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      border: Border.all(width: 0, color: kcSecondaryColor)),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Description',
                      hintStyle: TextStyle(
                        color: kcGreyLightColor,
                        fontSize: 12,
                        fontStyle: FontStyle.normal,
                      ),
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                      // enabledBorder: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(40.0),
                      //   borderSide: BorderSide(color: Colors.white, width: 0),
                      // ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                CustomButton(
                  color: kcPrimaryColor,
                  height: 30,
                  width: 100,
                  title: 'Settle',
                  ontap: () {},
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
