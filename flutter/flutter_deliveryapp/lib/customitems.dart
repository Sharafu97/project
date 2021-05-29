import 'package:flutter/material.dart';
import 'package:flutter_deliveryapp/homepage.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

const Color kcPrimaryColor = Color(0xff8FA620);
const Color kcSecondaryColor = Color(0xff424753);
const Color kcGreyLightColor = Color(0x0ff929292);
const Color kcMediumGreyColor = Color(0xff5B5A5D);
const Color kcDarkBlueColor = Color(0xFF002649);

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

  const CustomTextField({Key key, this.hint}) : super(key: key);
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      child: TextField(
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
              color: kcGreyLightColor,
              fontSize: 12,
              fontStyle: FontStyle.normal,
            ),
            contentPadding: EdgeInsets.all(10),
            border: InputBorder.none,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40.0),
                borderSide: BorderSide(color: Color(0xffCACFE2), width: 0))),
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
            color: Colors.white),
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
    return [MyHomepage()];
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
          NavBarStyle.style1, // Choose the nav bar style with this property.
    );
  }
}
