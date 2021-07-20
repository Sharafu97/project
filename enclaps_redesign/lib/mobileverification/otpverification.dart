import 'package:enclaps_redesign/config/color.dart';
import 'package:enclaps_redesign/config/style.dart';
import 'package:enclaps_redesign/mobileverification/verifiedotp.dart';
import 'package:enclaps_redesign/mobileverification/widget/otptextfield.dart';
import 'package:enclaps_redesign/mobileverification/widget/textfield.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';
import 'package:pinput/pin_put/pin_put_state.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  _OtpVerificationState createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  final _pinPutController = TextEditingController();
  final _pinPutFocusNode = FocusNode();

  Widget justRoundedCornersPinPut() {
    final BoxDecoration pinPutDecoration = BoxDecoration(
      color: kcDarkGreen,
      borderRadius: BorderRadius.circular(40),
    );
    final BoxDecoration pinPutFollowinglDecoration = BoxDecoration(
      color: kcWhite,
      borderRadius: BorderRadius.circular(40.0),
      border: Border.all(
        color: kcBorderColor,
      ),
    );
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: PinPut(
        fieldsCount: 4,
        withCursor: true,
        textStyle: const TextStyle(fontSize: 25.0, color: Colors.white),
        eachFieldWidth: 50.0,
        eachFieldHeight: 50.0,
        // onSubmit: (String pin) => _showSnackBar(pin),
        focusNode: _pinPutFocusNode,
        controller: _pinPutController,
        submittedFieldDecoration: pinPutDecoration,
        selectedFieldDecoration: pinPutDecoration,
        followingFieldDecoration: pinPutDecoration.copyWith(
          color: kcWhite,
          border: Border.all(
            color: kcBorderColor,
          ),
        ),
        pinAnimationType: PinAnimationType.fade,
        preFilledWidget: Text(
          '-',
          style: ktOtp.copyWith(color: kcPrimary),
        ),
      ),
    );
  }

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
                'OTP verification',
                style: ktHeadline1,
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'Enter the verification  we just sent',
                style: ktBody2,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'you on your mobile number',
                style: ktBody2,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '+919447752786',
                style: ktBody3,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 50,
              ),
              justRoundedCornersPinPut(),
              // Padding(
              //   padding: const EdgeInsets.only(left: 30, right: 30),
              //   child: Row(
              //     children: [
              //       Flexible(child: OtpTextField()),
              //       SizedBox(
              //         width: 20,
              //       ),
              //       Flexible(child: OtpTextField()),
              //       SizedBox(
              //         width: 20,
              //       ),
              //       Flexible(child: OtpTextField()),
              //       SizedBox(
              //         width: 20,
              //       ),
              //       Flexible(child: OtpTextField()),
              //     ],
              //   ),
              // ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => VerifiedOtp()));
                  },
                  child: Text('VERIFY OTP')),
              SizedBox(
                height: 50,
              ),
              Text(
                'Don’t you receive the OTP?',
                style: ktBody1,
                textAlign: TextAlign.center,
              ),
              GestureDetector(
                onTap: () {
                  print('resend otp');
                },
                child: Text(
                  ' Resend new OTP',
                  style: ktBody1.copyWith(color: kcDarkGreen),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
