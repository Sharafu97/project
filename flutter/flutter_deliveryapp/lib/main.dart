import 'package:flutter/material.dart';
import 'package:flutter_deliveryapp/customitems.dart';
import 'package:flutter_deliveryapp/homepage.dart';
import 'package:flutter_deliveryapp/orders.dart';
import 'package:flutter_deliveryapp/profile.dart';
import 'package:flutter_deliveryapp/settings.dart';
import 'package:flutter_deliveryapp/wallet.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Application delivery app',
      home: Onboard(),
    );
  }
}

class Onboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Application delivery app',
        home: Scaffold(
          backgroundColor: kcPrimaryColor,
          body: Center(
            child: Container(
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => MyLogin()));
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => MyLogin()));
                      },
                      child: Text(
                        'Skip',
                        style: textStyle(15, 'Poppins',
                            Color(0xffFFFFFF).withOpacity(.5), FontWeight.w400),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Fast Delivery',
                      textAlign: TextAlign.left,
                      style: textStyle(
                          36, 'Popins', Colors.white, FontWeight.w600),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '',
                      // 'Mutta roast gravy dish popular spicy Kerala',
                      textAlign: TextAlign.left,
                      style: textStyle(
                          12, 'Popins', Colors.white, FontWeight.w400),
                    ),
                  ),
                  Image.asset('assets/image.png'),
                ],
              ),
            ),
          ),
        ));
  }
}

class MyLogin extends StatefulWidget {
  @override
  LoginPage createState() => LoginPage();
}

class LoginPage extends State<MyLogin> {
  @override
  String username = 'aaaa';
  String password = '1111';
  final logpass = TextEditingController();
  final loguser = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Welcome',
                  style: textStyle(
                      36, 'Popins', kcSecondaryColor, FontWeight.w700),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Sign in to continue',
                  style: textStyle(
                      12, 'Popins', kcGreyLightColor, FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'User name:',
                  style: textStyle(13, 'Popins',
                      Color(0xff000000).withOpacity(.6), FontWeight.w400),
                ),
              ),
              CustomTextField(
                hint: 'Username',
                textController: loguser,
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  'Password:',
                  style: textStyle(13, 'Popins',
                      Color(0xff000000).withOpacity(.6), FontWeight.w400),
                ),
              ),
              CustomTextField(
                hint: 'Password',
                textController: logpass,
              ),
              Container(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => MyLogin()));
                  },
                  child: Text(
                    'Forgot password??',
                    style: textStyle(13, 'Poppins',
                        Color(0xff000000).withOpacity(.6), FontWeight.w400),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              CustomButton(
                color: kcPrimaryColor,
                title: 'Login',
                ontap: () {
                  if (loguser.text == username && logpass.text == password) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NavBarContainer()));
                  } else {
                    print('cant login');
                  }
                },
                height: 50,
                width: 100,
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('New here..?',
                      style: textStyle(
                        14,
                        'Poppins',
                        kcSecondaryColor,
                        FontWeight.w500,
                      )),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Signup()));
                    },
                    child: Text(
                      'Register',
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

enum gender { m, f, o }

class Signup extends StatefulWidget {
  Sign createState() => Sign();
}

class Sign extends State {
  gender _ans = gender.m;
  var currentValueplace;
  final _formKey = GlobalKey<FormState>();
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
                  children: [
                    IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    Text(
                      'Registration Form',
                      style: textStyle(
                          18, 'Poppins', kcSecondaryColor, FontWeight.w700),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Form(
                key: _formKey,
                child: Container(
                  padding: EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Name:',
                        style: textStyle(
                            12, 'Poppins', Color(0xff000000), FontWeight.w600),
                      ),
                      CustomTextFormField(
                        hint: 'Name',
                        validate: (value) {
                          if (value == null) {
                            return 'it is null';
                          } else if (value.isEmpty) {
                            return 'Please enter some text';
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Mobile:',
                        style: textStyle(
                            12, 'Poppins', Color(0xff000000), FontWeight.w600),
                      ),
                      CustomTextFormField(
                        hint: 'Mobile',
                        validate: (value) {
                          if (value == null) {
                            return 'it is null';
                          } else if (value.isEmpty) {
                            return 'Please enter some text';
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'E mail:',
                        style: textStyle(
                            12, 'Poppins', Color(0xff000000), FontWeight.w600),
                      ),
                      CustomTextFormField(
                        hint: 'Email',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Adress:',
                        style: textStyle(
                            12, 'Poppins', Color(0xff000000), FontWeight.w600),
                      ),
                      CustomTextFormField(
                        hint: 'Adress',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Gender:',
                        style: textStyle(
                            12, 'Poppins', Color(0xff000000), FontWeight.w600),
                      ),
                      Row(
                        children: [
                          Radio<gender>(
                            activeColor: Colors.red,
                            value: gender.m,
                            groupValue: _ans,
                            onChanged: (gender value) {
                              setState(() {
                                _ans = value;
                              });
                            },
                          ),
                          Text(
                            'Male',
                            style: textStyle(12, 'Poppins', kcGreyLightColor,
                                FontWeight.w400),
                          ),
                          Radio<gender>(
                            activeColor: Colors.red,
                            value: gender.f,
                            groupValue: _ans,
                            onChanged: (gender value) {
                              setState(() {
                                _ans = value;
                              });
                            },
                          ),
                          Text(
                            'female',
                            style: textStyle(12, 'Poppins', kcGreyLightColor,
                                FontWeight.w400),
                          ),
                          Radio<gender>(
                            activeColor: Colors.red,
                            value: gender.o,
                            groupValue: _ans,
                            onChanged: (gender value) {
                              setState(() {
                                _ans = value;
                              });
                            },
                          ),
                          Text(
                            'Others',
                            style: textStyle(12, 'Poppins', kcGreyLightColor,
                                FontWeight.w400),
                          ),
                        ],
                      ),
                      Text(
                        'Job location:',
                        style: textStyle(
                            12, 'Poppins', Color(0xff000000), FontWeight.w600),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: Color(0xffCACFE2), width: 0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(40),
                          ),
                        ),
                        child: DropdownButton<String>(
                          icon: Icon(Icons.arrow_drop_down),
                          isExpanded: true,
                          hint: Text(
                            'Place',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          underline: SizedBox(),
                          items: ['puthiyara', 'calicut city', 'pavangad']
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
                              this.currentValueplace = newvalue;
                            });
                          },
                          value: currentValueplace,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Photo:',
                        style: textStyle(
                            12, 'Poppins', Color(0xff000000), FontWeight.w600),
                      ),
                      Container(
                        // shadowColor: Color(0xff9cc6eb),
                        // elevation: 2/,

                        // IconButton(
                        //     icon: Icon(Icons.add_circle_outline_rounded,
                        //         color: Colors.red),
                        //     onPressed: () {}),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: Color(0xffCACFE2), width: 0),
                          borderRadius: BorderRadius.all(
                            Radius.circular(40),
                          ),
                        ),
                        // child: Flexible(
                        //   flex: 1,

                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: IconButton(
                                icon: Icon(Icons.add_circle_outline_rounded,
                                    color: Colors.red),
                                onPressed: () {}),
                            hintText: 'upload',
                            hintStyle: TextStyle(
                              color: Color(0xff5578A3),
                              fontSize: 17,
                              fontStyle: FontStyle.normal,
                            ),
                            contentPadding: EdgeInsets.all(10),
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide:
                                  BorderSide(color: Colors.white, width: 0),
                            ),
                          ),
                        ),
                      ),
                      // ),
                      SizedBox(
                        height: 50,
                      ),
                      CustomButton(
                        color: kcPrimaryColor,
                        ontap: () {
                          if (_formKey.currentState.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Signup_2()));
                          }
                        },
                        title: 'NEXT',
                        height: 50,
                        width: 100,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Signup_2 extends StatefulWidget {
  Sign_2 createState() => Sign_2();
}

class Sign_2 extends State {
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
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
                  children: [
                    IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    Text(
                      'Registration form',
                      style: textStyle(
                          18, 'Poppins', kcSecondaryColor, FontWeight.w700),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Form(
                key: _formKey,
                child: Container(
                  padding: EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Driving License:',
                        style: textStyle(
                            12, 'Poppins', Color(0xff000000), FontWeight.w600),
                      ),
                      CustomTextFormField(
                        hint: 'license number',
                        validate: (value) {
                          if (value == null) {
                            return 'it is null';
                          } else if (value.isEmpty) {
                            return 'Please enter some text';
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Bike Insurance:',
                        style: textStyle(
                            12, 'Poppins', Color(0xff000000), FontWeight.w600),
                      ),
                      CustomTextFormField(
                        hint: 'Bike Insurance no',
                        validate: (value) {
                          if (value == null) {
                            return 'it is null';
                          } else if (value.isEmpty) {
                            return 'Please enter some text';
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Aadhar Card:',
                        style: textStyle(
                            12, 'Poppins', Color(0xff000000), FontWeight.w600),
                      ),
                      CustomTextFormField(
                        hint: 'Aadhar Card no',
                        validate: (value) {
                          if (value == null) {
                            return 'it is null';
                          } else if (value.isEmpty) {
                            return 'Please enter some text';
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Bank Account Statement:',
                        style: textStyle(
                            12, 'Poppins', Color(0xff000000), FontWeight.w600),
                      ),
                      CustomTextFormField(
                        hint: 'Bank Account Statement no',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Health Certificate:',
                        style: textStyle(
                            12, 'Poppins', Color(0xff000000), FontWeight.w600),
                      ),
                      CustomTextFormField(
                        hint: 'Health Certificate no',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Your Password:',
                        style: textStyle(
                            12, 'Poppins', Color(0xff000000), FontWeight.w600),
                      ),
                      CustomTextFormField(
                        hint: 'Password',
                        validate: (value) {
                          if (value == null) {
                            return 'it is null';
                          } else if (value.isEmpty) {
                            return 'Please enter some text';
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      CustomButton(
                        color: kcPrimaryColor,
                        ontap: () {
                          if (_formKey.currentState.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyLogin()));
                          }
                        },
                        title: 'SUBMIT',
                        height: 50,
                        width: 100,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
