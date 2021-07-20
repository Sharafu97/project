import 'package:enclaps_flutter_app/config/color.dart';
import 'package:enclaps_flutter_app/config/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class English extends StatefulWidget {
  LoginPage createState() => LoginPage();
}

class LoginPage extends State {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                SvgPicture.asset('assets/images/style.svg'),
                Positioned(
                  top: 108,
                  left: 167,
                  height: 60,
                  width: 60,
                  child: SvgPicture.asset('assets/images/book.svg'),
                ),
                Positioned(
                  top: 20,
                  left: 20,
                  height: 50,
                  width: 50,
                  child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset('assets/images/dash.svg')),
                ),
                Positioned(
                    top: 20,
                    right: 20,
                    height: 50,
                    width: 50,
                    child: IconButton(
                      onPressed: () {},
                      icon: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back,
                            size: 30,
                            color: kcWhite,
                          )),
                    ))
              ],
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'ENGLISH',
                style: ktHeadline2,
              ),
            ),
            SizedBox(height: 40),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color(0xff354882),
                            width: 2,
                          )),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Chapter 1',
                      style: ktHeadline2,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Divider(),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color(0xff354882),
                            width: 2,
                          )),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Chapter 2',
                      style: ktHeadline2,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Divider(),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.only(left: 50),
                child: Row(
                  children: [
                    Container(
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: Color(0xff354882),
                            width: 2,
                          )),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Chapter 3',
                      style: ktHeadline2,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Divider(),
            ),
            SizedBox(height: 50),
            Text(
              'Parents guidline',
              style: ktBody1,
            ),
            // SvgPicture.asset('assets/images/video.svg')
          ],
        ),
      ),
    );
  }
}
