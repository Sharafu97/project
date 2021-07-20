import 'dart:math';

import 'package:enclaps_flutter_app/config/color.dart';
import 'package:enclaps_flutter_app/config/style.dart';
import 'package:enclaps_flutter_app/screens/english.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  LoginPage createState() => LoginPage();
}

class LoginPage extends State {
  bool _isObscure = true;
  bool? _checkBoxVal = true;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'LOGIN',
                  style: ktHeadline1,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  'User name.',
                  style: TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black.withOpacity(.6),
                    letterSpacing: 1,
                    wordSpacing: 1,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextField(
                // controller: textController,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),

                decoration: InputDecoration(
                  hintText: 'user name',
                  focusColor: Color(0xff222C38),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    borderSide: BorderSide(color: Color(0xff222C38), width: 0),
                  ),
                  contentPadding: EdgeInsets.all(10),
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    borderSide: BorderSide(color: Color(0xffCACFE2), width: 0),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  'Password',
                  style: TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.black.withOpacity(.6),
                    letterSpacing: 1,
                    wordSpacing: 1,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextField(
                // controller: textController,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
                obscureText: _isObscure,

                decoration: InputDecoration(
                  hintText: 'password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isObscure
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: Color(0xff4175DF),
                    ),
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                  ),
                  focusColor: Color(0xff222C38),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    borderSide: BorderSide(color: Color(0xff222C38), width: 0),
                  ),
                  contentPadding: EdgeInsets.only(left: 20),
                  border: InputBorder.none,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40.0),
                    borderSide: BorderSide(color: Color(0xffCACFE2), width: 0),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                child: Text('LOGIN', style: ktButtonStyle),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => English()));
                },
                style: ElevatedButton.styleFrom(
                    shadowColor: Color(0xff9CC6EB),
                    primary: kcButton,
                    elevation: 10,
                    minimumSize: Size(0, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                      // side: BorderSide(
                      //   color: Colors.blue,
                      //   width: 2,
                      // )
                    )),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Checkbox(
                      onChanged: (bool? value) {
                        setState(() => this._checkBoxVal = value);
                      },
                      value: this._checkBoxVal,
                    ),
                    Text('Remember me', style: ktbody2),
                  ]),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password',
                      style: ktbody2.copyWith(color: kcHead),
                      textAlign: TextAlign.end,
                    ),
                  )
                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don’t have an account?',
                    style: ktbody2.copyWith(color: const Color(0xffbcbbbb)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Signup',
                      style:
                          ktButtonStyle.copyWith(color: kclogin, fontSize: 14),
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
