import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
//import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
//import 'package:the_kntag/bottombar/notification/notifview.dart';
import 'package:the_kntag/colors.dart';
import 'package:the_kntag/creattag/creat_tagview.dart';
import 'package:the_kntag/massege/messageview.dart';
import 'package:the_kntag/notification/notifview.dart';
import 'package:the_kntag/views/home/homeview.dart';

import '../group/groupview/groupview.dart';

// ignore: must_be_immutable
class  Bottombar extends StatelessWidget {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  Bottombar({Key? key}) : super(key: key);

  List<Widget> _buildScreens() {
    return [
      const Homeview(),
      const GroupView(),
      const CreatTagview(),
      const Notifview(),
      // Notifmodel(img: '', name: '', description: '', mycontact: '')
       const Massage()
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon:const Icon(Icons.location_pin),
        title: ("Home"),
        activeColorPrimary: blue,
        //titleColor,
        inactiveColorPrimary:black,
        // CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon:const Icon(Icons.people),
        title: ("Group"),
        activeColorPrimary: blue,
        //titleColor,
        inactiveColorPrimary:black,
        //CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon:const Icon(Icons.add_box_rounded),
        title: ("Post"),
        activeColorPrimary:blue,
        // titleColor,
        inactiveColorPrimary: black,
        //CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
    icon:const Icon(Icons.notifications),
        title: ("Notifications"),
        activeColorPrimary: blue,
        //titleColor,
        inactiveColorPrimary: black
        //CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon:const Icon(Icons.chat),
        title: ("Settings"),
        activeColorPrimary:blue,
        // titleColor,
        inactiveColorPrimary:black
        // CupertinoColors.systemGrey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      navBarHeight: 40,
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
      itemAnimationProperties:const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation:const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),

      navBarStyle:
          NavBarStyle.style12, // Choose the nav bar style with this property.
    );
  }
}