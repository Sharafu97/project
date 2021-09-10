import 'package:enclaps_redesign/config/color.dart';
import 'package:enclaps_redesign/config/style.dart';
import 'package:flutter/material.dart';

class VerifiedOtp extends StatefulWidget {
  const VerifiedOtp({Key? key}) : super(key: key);

  @override
  _VerifiedOtpState createState() => _VerifiedOtpState();
}

class _VerifiedOtpState extends State<VerifiedOtp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                // color: Colors.red,
                gradient: LinearGradient(
                    colors: [kcgd1, kcgd2, kcgd3, kcgd4, kcgd5, kcgd6, kcgd7],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft),
                borderRadius: BorderRadius.all(
                  Radius.circular(40),
                ),
              ),
              child: Icon(
                Icons.check_rounded,
                color: kcWhite,
                size: 30,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Mobile number\nverified successfully',
              style: ktHeadline1,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'One of the ongoing experiments to\nimprove new user conversion',
              style: ktBody2.copyWith(height: 1.5),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
