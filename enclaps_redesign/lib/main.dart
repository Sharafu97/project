import 'package:enclaps_redesign/mobileverification/numberverify.dart';
import 'package:enclaps_redesign/payment/payment.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Enclaps Redesign',
      home: Verification(),
    );
  }
}
