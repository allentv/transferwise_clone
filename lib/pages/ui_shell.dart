import 'package:flutter/material.dart';
import 'activity.dart';
import 'account.dart';
import 'invite.dart';
import 'recipients.dart';
import 'send.dart';
import '../widgets/tw_nav_bar.dart';

class UIShell extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _UIShellState();
}

class _UIShellState extends State<UIShell> {
  var _screens = <Widget>[
    ActivityPage(),
    AccountPage(),
    SendPage(),
    RecipientsPage(),
    InvitePage(),
  ];

  int _currentScreenIndex = 0;

  void setActiveScreen(int activeScreenIndex) {
    setState(() {
      _currentScreenIndex = activeScreenIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
        child: _screens[_currentScreenIndex],
      ),
      bottomNavigationBar: TWBottomNavBar(setActiveScreen),
      extendBody: false,
      extendBodyBehindAppBar: false,
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     padding: EdgeInsets.only(top: 20, left: 20, right: 20),
  //     width: MediaQuery.of(context).size.width,
  //     height: MediaQuery.of(context).size.height,
  //     child: Column(
  //       children: [
  //         Expanded(
  //           child: SingleChildScrollView(
  //             child: _screens[_currentScreenIndex],
  //           ),
  //         ),
  //         Row(
  //           children: [
  //             Column(
  //               children: [
  //                 Icon(Icons.group),
  //                 Text('Recipients'),
  //               ],
  //             ),
  //             Column(
  //               children: [
  //                 Icon(Icons.group),
  //                 Text('Recipients'),
  //               ],
  //             ),
  //             Column(
  //               children: [
  //                 Icon(Icons.group),
  //                 Text('Recipients'),
  //               ],
  //             ),
  //             Column(
  //               children: [
  //                 Icon(Icons.group),
  //                 Text('Recipients'),
  //               ],
  //             ),
  //             Column(
  //               children: [
  //                 Icon(Icons.group),
  //                 Text('Recipients'),
  //               ],
  //             ),
  //           ],
  //         ),
  //       ],
  //     ),
  //   );
  // }

}
