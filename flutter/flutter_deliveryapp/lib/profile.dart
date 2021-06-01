import 'package:flutter/material.dart';

import 'customitems.dart';

class Profile extends StatefulWidget {
  _Profile createState() => _Profile();
}

class _Profile extends State {
  var currentvaluemode;
  Widget build(BuildContext contaxt) {
    return Scaffold(
      body: Center(
        child: Column(children: [
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
                  'Profile',
                  style: textStyle(
                      18, 'Poppins', kcSecondaryColor, FontWeight.w700),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 40,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'NAME',
                  style: textStyle(14, 'Poppins', kcRedColor, FontWeight.w700),
                ),
                Text(
                  'MOBILE NO',
                  style: textStyle(
                      12, 'Poppins', kcGreyLightColor, FontWeight.w500),
                ),
                Text(
                  'Since:Date',
                  style: textStyle(
                      12, 'Poppins', kcMediumGreyColor, FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Bonus()));
                  },
                  child: Text(
                    'Incentives',
                    style:
                        textStyle(14, 'Poppins', Colors.white, FontWeight.w700),
                  ),
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xffFBAB18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        // side: BorderSide(
                        //   color: Colors.blue,
                        //   width: 2,
                        // )
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      '13',
                      style: textStyle(
                          18, 'Poppins', kcGreyLightColor, FontWeight.w500),
                    ),
                    Text(
                      'Today',
                      style: textStyle(
                          12, 'Poppins', kcSecondaryColor, FontWeight.w500),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '66',
                      style: textStyle(
                          18, 'Poppins', kcGreyLightColor, FontWeight.w500),
                    ),
                    Text(
                      'Week',
                      style: textStyle(
                          12, 'Poppins', kcSecondaryColor, FontWeight.w500),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '182',
                      style: textStyle(
                          18, 'Poppins', kcGreyLightColor, FontWeight.w500),
                    ),
                    Text(
                      'month',
                      style: textStyle(
                          12, 'Poppins', kcSecondaryColor, FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40.0, right: 40),
            child: Divider(),
          ),
          Container(
            width: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.star,
                  color: Color(0xffC4C4C4),
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Color(0xffC4C4C4),
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Color(0xffC4C4C4),
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Color(0xffC4C4C4),
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Color(0xffC4C4C4),
                  size: 15,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 30,
            width: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: kcPrimaryColor, borderRadius: BorderRadius.circular(40)),
            child: Text(
              '1105 Orders',
              style: textStyle(14, 'Poppins', Colors.white, FontWeight.w700),
            ),
          )
        ]),
      ),
    );
  }
}

class Bonus extends StatefulWidget {
  _Bonus createState() => _Bonus();
}

class _Bonus extends State {
  var currentvaluemode;
  Widget build(BuildContext contaxt) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
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
                  'Profile',
                  style: textStyle(
                      18, 'Poppins', kcSecondaryColor, FontWeight.w700),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30.0, left: 30),
            child: Column(
                // mainAxisAlignment: MainAxisAlignment.,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      '₹ 250',
                      style:
                          textStyle(24, 'Poppins', kcRedColor, FontWeight.w600),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Transactions',
                    textAlign: TextAlign.start,
                    style: textStyle(
                        18, 'Poppins', kcSecondaryColor, FontWeight.w700),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Paid against order 100328',
                        textAlign: TextAlign.start,
                        style: textStyle(
                            14, 'Poppins', kcSecondaryColor, FontWeight.w600),
                      ),
                      Text(
                        '₹ 50',
                        textAlign: TextAlign.start,
                        style: textStyle(
                            14, 'Poppins', kcSecondaryColor, FontWeight.w600),
                      ),
                    ],
                  ),
                  Text(
                    '17 Sept, 2020  |  7:00 AM ',
                    textAlign: TextAlign.start,
                    style: textStyle(
                        10, 'Poppins', Color(0xffbcbbbb), FontWeight.w600),
                  ),
                  Divider(),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Bonus',
                        textAlign: TextAlign.start,
                        style: textStyle(
                            14, 'Poppins', kcSecondaryColor, FontWeight.w600),
                      ),
                      Text(
                        '₹ 50',
                        textAlign: TextAlign.start,
                        style: textStyle(
                            14, 'Poppins', kcSecondaryColor, FontWeight.w600),
                      ),
                    ],
                  ),
                  Text(
                    '17 Sept, 2020  |  7:00 AM ',
                    textAlign: TextAlign.start,
                    style: textStyle(
                        10, 'Poppins', Color(0xffbcbbbb), FontWeight.w600),
                  ),
                  Divider()
                ]),
          )
        ]),
      ),
    );
  }
}
