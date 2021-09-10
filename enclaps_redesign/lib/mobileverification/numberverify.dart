import 'package:enclaps_redesign/config/color.dart';
import 'package:enclaps_redesign/config/style.dart';
import 'package:enclaps_redesign/mobileverification/otpverification.dart';
import 'package:enclaps_redesign/mobileverification/widget/textfield.dart';
import 'package:flutter/material.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Mobile number verification',
                style: ktHeadline1,
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'We will send you a \n One Time Password on this number',
                style: ktBody2.copyWith(height: 1.5),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 70,
              ),
              Container(
                alignment: Alignment.bottomLeft,
                padding: EdgeInsets.only(left: 25),
                child: Text(
                  'Mobiile number*',
                  style: ktBody2,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              CustomTextField(
                hint: 'Mobile number',
              ),
              // TextField(
              //   // controller: textController,
              //   decoration: InputDecoration(
              //     hintText: 'Mobile number',
              //     hintStyle: ktBody2,
              //     contentPadding: EdgeInsets.all(10),
              //     border: InputBorder.none,
              //     enabledBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(40.0),
              //       borderSide: BorderSide(color: kcBorderColor, width: 1),
              //     ),
              //     focusedBorder: OutlineInputBorder(
              //       borderRadius: BorderRadius.circular(40.0),
              //       borderSide: BorderSide(color: kcBorderColor, width: 1),
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                            builder: (context) => OtpVerification()));
                  },
                  child: Text('REQUEST OTP'))
            ],
          ),
        ),
      ),
    );
  }
}
