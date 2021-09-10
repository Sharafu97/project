import 'package:enclaps_redesign/config/color.dart';
import 'package:enclaps_redesign/config/style.dart';
import 'package:enclaps_redesign/payment/widget.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.all(30),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [kcgd8, kcDarkGreen, kcgd9],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      '₹12,000',
                      style: ktBody4,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'SPECIAL PACKAGE  STUDENTS',
                      style: ktBody5,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'One of the ongoing experiments \n improve new user conversion',
                      style: ktBody2.copyWith(color: kcWhite, height: 1.5),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Select Payment Method',
                  style: ktBody1.copyWith(color: kcdarkgary.withOpacity(.8)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Flexible(
                child: ListView(
                  children: [paymentType()],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
