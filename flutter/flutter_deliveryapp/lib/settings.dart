import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'customitems.dart';

class Settings extends StatefulWidget {
  _Settings createState() => _Settings();
}

class _Settings extends State {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
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
                    'Settings',
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
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 40,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'NAME',
                        style: textStyle(
                            14, 'Poppins', kcRedColor, FontWeight.w700),
                      ),
                      Text(
                        'MOBILE NO',
                        style: textStyle(
                            12, 'Poppins', kcMediumGreyColor, FontWeight.w500),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 30),
              child: Divider(),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 30, right: 30),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      print('leave');
                    },
                    child: Container(
                      // color: Colors.red,
                      height: 50,
                      child: Row(
                        children: [
                          Icon(
                            Icons.menu,
                            size: 15,
                            color: kcGreyLightColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Leave request',
                            style: textStyle(
                              13,
                              'Poppins',
                              kcGreyLightColor,
                              FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 0),
                    child: Divider(),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChangePassword()));
                    },
                    child: Container(
                      // color: Colors.red,
                      height: 50,
                      child: Row(
                        children: [
                          Icon(
                            Icons.lock_outline,
                            size: 15,
                            color: kcGreyLightColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Change password',
                            style: textStyle(
                              13,
                              'Poppins',
                              kcGreyLightColor,
                              FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 0),
                    child: Divider(),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Notification()));
                    },
                    child: Container(
                      // color: Colors.red,
                      height: 50,
                      child: Row(
                        children: [
                          Icon(
                            Icons.notifications_none,
                            size: 15,
                            color: kcGreyLightColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Notification',
                            style: textStyle(
                              13,
                              'Poppins',
                              kcGreyLightColor,
                              FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 0),
                    child: Divider(),
                  ),
                  GestureDetector(
                    onTap: () {
                      print('leave');
                    },
                    child: Container(
                      // color: Colors.red,
                      height: 50,
                      child: Row(
                        children: [
                          Icon(
                            Icons.logout,
                            size: 15,
                            color: kcGreyLightColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Logout',
                            style: textStyle(
                              13,
                              'Poppins',
                              kcGreyLightColor,
                              FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ChangePassword extends StatefulWidget {
  ChangePass createState() => ChangePass();
}

class ChangePass extends State {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
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
                    'Change password',
                    style: textStyle(
                        18, 'Poppins', kcSecondaryColor, FontWeight.w700),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Padding(
              padding: EdgeInsets.all(30),
              child: Material(
                shadowColor: Color(0xff9cc6eb),
                elevation: 1,
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                child: Container(
                  height: 300,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    // boxShadow: [
                    //   BoxShadow(
                    //     color: kcSecondaryColor.withOpacity(.02),
                    //     blurRadius: 1,
                    //     spreadRadius: 10,
                    //   ),
                    // ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomTextField(
                        hint: 'Current password',
                      ),
                      CustomTextField(
                        hint: 'New Password',
                      ),
                      CustomTextField(
                        hint: 'Confirm new password',
                      ),
                      CustomButton(
                        title: 'SUBMIT',
                        height: 30,
                        width: 50,
                        color: kcPrimaryColor,
                        ontap: () {},
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Notification extends StatefulWidget {
  _Notification createState() => _Notification();
}

class _Notification extends State {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
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
                    'Change password',
                    style: textStyle(
                        18, 'Poppins', kcSecondaryColor, FontWeight.w700),
                  )
                ],
              ),
            ),
            SizedBox(height: 50),
            Flexible(
                child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                  child: ListTile(
                    isThreeLine: true,
                    leading: Icon(
                      Icons.notifications_none,
                      color: Color(0xffFBAB18),
                      size: 18,
                    ),
                    title: Text(
                      'Notification',
                      style: textStyle(
                          14, 'Poppins', Colors.greenAccent, FontWeight.w600),
                    ),
                    subtitle: Text(
                        'Your order has been placed successfully.Thank You!',
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff797777),
                          fontFamily: 'Poppins',
                          // letterSpacing: 1,
                          // wordSpacing: 1,
                        )),
                    trailing: Text(
                      'Days ago',
                      style: textStyle(
                          9, 'Poppins', Color(0xffB4B4B4), FontWeight.w400),
                    ),
                  ),
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
