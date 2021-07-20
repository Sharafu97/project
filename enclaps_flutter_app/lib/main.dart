import 'package:enclaps_flutter_app/config/style.dart';
import 'package:enclaps_flutter_app/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Application delivery app',
      home: Login(),
    );
  }
}
