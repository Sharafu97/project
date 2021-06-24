import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deliveryapp/apiServ/apiService.dart';
import 'package:flutter_deliveryapp/model/usermodel.dart';

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
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => NavBarContainer()));
                      }),
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
                        '${UserData().user.fullname}',
                        style: textStyle(
                            14, 'Poppins', kcRedColor, FontWeight.w700),
                      ),
                      Text(
                        '${UserData().user.deliveryBoyId}',
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LeaveRequest()));
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
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
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
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
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

class LeaveRequest extends StatefulWidget {
  @override
  _LeaveRequestState createState() => _LeaveRequestState();
}

class _LeaveRequestState extends State<LeaveRequest> {
  DateTime currentdate = DateTime.now();
  DateTime startdate = DateTime.now();
  DateTime enddate = DateTime.now();
  String errorMessage = '';
  bool hasErrorOccoured = false;
  bool loading = false;
  final leaveType = TextEditingController();
  final noDays = TextEditingController();
  final reson = TextEditingController();

  Future<void> userLeave() {
    // DateTime sDate, DateTime eDate, String ltype,
    //   String ldays, String lreason) async {
    loading = true;
    setState(() {});
    print(startdate);
    print(enddate);
    print(leaveType.toString());
    print(noDays.toString());
    print(reson.toString());

    // try {
    //   // final user = await ApiServices().login();
    //   print('trueeeee');

    //   hasErrorOccoured = false;
    //   // UserData().user = user;
    //   // Navigator.push(
    //   //     context, MaterialPageRoute(builder: (context) => NavBarContainer()));
    //   // final userpro = await ApiServices().profile();
    //   // UserProfile().pro = userpro;
    // } catch (e) {
    //   // hasErrorOccoured = true;
    //   // print('falseeeee');
    //   // print(UserProfile().pro.name);
    //   // // print(UserModel().tocken);
    //   // errorMessage = e.toString();
    //   // ScaffoldMessenger.of(context)
    //   //     .showSnackBar(SnackBar(content: Text(errorMessage)));
    // }
    // loading = false;
    // setState(() {});
  }

  final DateTime pickedstartDate = DateTime.now();
  Future<void> _selectstartDate(BuildContext context) async {
    final DateTime pickedDate = await showDatePicker(
        context: context,
        initialDate: currentdate,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentdate)
      setState(() {
        startdate = pickedDate;
      });
  }

  final DateTime pickedendDate = DateTime.now();
  Future<void> _selectendDate(BuildContext context) async {
    final DateTime pickedDate = await showDatePicker(
        context: context,
        initialDate: currentdate,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentdate)
      setState(() {
        enddate = pickedDate;
      });
  }

  @override
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
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  Text(
                    'Leave Apply',
                    style: textStyle(
                        18, 'Poppins', kcSecondaryColor, FontWeight.w700),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Container(
                height: 200,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Start Date:',
                      style: textStyle(
                          12, 'Poppins', Color(0xff000000), FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: 200,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color(0xfff5f5f5),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            startdate.toString(),
                            style: textStyle(12, 'Poppins', kcSecondaryColor,
                                FontWeight.w700),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            _selectstartDate(context);
                          },
                          child: Text(
                            'Select a Date',
                            style: textStyle(
                                12, 'Poppins', Colors.white, FontWeight.w700),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'End Date:',
                      style: textStyle(
                          12, 'Poppins', Color(0xff000000), FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 40,
                          width: 200,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color(0xfff5f5f5),
                              borderRadius: BorderRadius.circular(10)),
                          child: Text(
                            enddate.toString(),
                            style: textStyle(12, 'Poppins', kcSecondaryColor,
                                FontWeight.w700),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            _selectendDate(context);
                          },
                          child: Text(
                            'Select a Date',
                            style: textStyle(
                                12, 'Poppins', Colors.white, FontWeight.w700),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Leave type',
                      style: textStyle(13, 'Popins',
                          Color(0xff000000).withOpacity(.6), FontWeight.w400),
                    ),
                  ),
                  CustomTextField(
                    hint: 'Casual/Medical',
                    textController: leaveType,
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Days',
                      style: textStyle(13, 'Popins',
                          Color(0xff000000).withOpacity(.6), FontWeight.w400),
                    ),
                  ),
                  CustomTextField(
                    hint: 'Number Of days',
                    textController: noDays,
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Reason',
                      style: textStyle(13, 'Popins',
                          Color(0xff000000).withOpacity(.6), FontWeight.w400),
                    ),
                  ),
                  CustomTextField(
                    hint: 'Reason for leave',
                    textController: reson,

                    // textController: logpass,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomButton(
                      height: 40,
                      width: 100,
                      title: 'Submit',
                      color: kcPrimaryColor,
                      ontap: () {
                        print(startdate.day);
                        print(enddate);
                        print(leaveType.text);
                        print(noDays.text);
                        print(reson.text);
                      }
                      // userLeave();
                      // startdate, startdate, leaveType.text,
                      //   noDays.text, reson.text
                      // },
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
