import 'package:flutter/material.dart';
import 'package:flutter_deliveryapp/homepage.dart';
import 'package:flutter_deliveryapp/orders.dart';
import 'package:flutter_deliveryapp/profile.dart';
import 'package:flutter_deliveryapp/settings.dart';
import 'package:flutter_deliveryapp/wallet.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:dotted_line/dotted_line.dart';

const Color kcPrimaryColor = Color(0xff8FA620);
const Color kcSecondaryColor = Color(0xff424753);
const Color kcGreyLightColor = Color(0x0ff929292);
const Color kcMediumGreyColor = Color(0xff5B5A5D);
const Color kcRedColor = Color(0xFFF15B4D);

TextStyle textStyle(
    double fontSiz, String fontFam, Color fontColor, FontWeight fontWgt) {
  return TextStyle(
      fontFamily: fontFam,
      fontSize: fontSiz,
      color: fontColor,
      fontWeight: fontWgt);
}

class CustomTextField extends StatelessWidget {
  final String hint;
  final textController;

  const CustomTextField({Key key, this.hint, this.textController})
      : super(key: key);
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
        border: Border.all(color: Color(0xffCACFE2), width: 0),
      ),
      child: TextField(
        controller: textController,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
              color: kcGreyLightColor,
              fontSize: 12,
              fontStyle: FontStyle.normal,
              fontFamily: 'Poppins'),
          contentPadding: EdgeInsets.all(10),
          border: InputBorder.none,
          // enabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(40.0),
          //   borderSide: BorderSide(color: Color(0xffCACFE2), width: 0),
          // ),
        ),
      ),
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  final String hint;
  final Function(String) validate;

  const CustomTextFormField({Key key, this.hint, this.validate})
      : super(key: key);
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(40),
        ),
        border: Border.all(color: Color(0xffCACFE2), width: 0),
      ),
      child: TextFormField(
        validator: validate,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(
              color: kcGreyLightColor,
              fontSize: 12,
              fontStyle: FontStyle.normal,
              fontFamily: 'Poppins'),
          contentPadding: EdgeInsets.all(10),
          border: InputBorder.none,
          // enabledBorder: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(40.0),
          //   borderSide: BorderSide(color: Color(0xffCACFE2), width: 0),
          // ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key key, this.title, this.color, this.height, this.width, this.ontap})
      : super(key: key);

  final String title;
  final Function ontap;
  final Color color;
  final double height;
  final double width;
  // final double radius;

  // const CustomButton({Key key, this.hint}) : super(key: key);
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        title,
        style: TextStyle(
          fontSize: 17,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.normal,
          fontFamily: 'Poppins',
          color: Colors.white,
        ),
      ),
      onPressed: ontap,
      style: ElevatedButton.styleFrom(
          shadowColor: Color(0xff9CC6EB),
          primary: color,
          elevation: 10,
          minimumSize: Size(width, height),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40)),
            // side: BorderSide(
            //   color: Colors.blue,
            //   width: 2,
            // )
          )),
    );
  }
}

class NavBar extends StatelessWidget {
  // const MyApp({Key key}) : super(key: key);
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  List<Widget> _buildScreens() {
    return [MyHomepage(), Wallet(), Orders(), Profile(), Settings()];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      // PersistentBottomNavBarItem(
      //     icon: Icon(CupertinoIcons.home),
      //     title: ("Home"),
      //     activeColorPrimary: CupertinoColors.activeBlue,
      //     inactiveColorPrimary: CupertinoColors.systemGrey,
      // ),

      PersistentBottomNavBarItem(
        // backgroundColor: Color(0xff929292),
        icon: Icon(
          Icons.home_outlined,
        ),
        title: 'Home',
        activeColorPrimary: Colors.red,
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.account_balance_wallet_outlined,
        ),
        title: 'Wallet',
        activeColorPrimary: Colors.red,
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.work_outline_sharp,
        ),
        title: 'Orders',
        activeColorPrimary: Colors.red,
        inactiveColorPrimary: Colors.black,
      ),

      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.person,
        ),
        title: 'Profile',
        activeColorPrimary: Colors.red,
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          Icons.settings_outlined,
        ),
        title: 'Settings',
        activeColorPrimary: Colors.red,
        inactiveColorPrimary: Colors.black,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style6, // Choose the nav bar style with this property.
    );
  }
}

// DottedLine dotedline(
//   direction: Axis.horizontal,
//   lineLength: double.infinity,
//   lineThickness: 1.0,
//   dashLength: 4.0,
//   dashColor: Colors.black,
//   dashRadius: 0.0,
//   dashGapLength: 4.0,
//   dashGapColor: Colors.transparent,
//   dashGapRadius: 0.0,
// )

class NavBarContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(),
    );
  }
}
