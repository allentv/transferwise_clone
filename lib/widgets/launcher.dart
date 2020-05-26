import 'package:flutter/material.dart';
import '../pages/ui_shell.dart';

// Determines if the Platform is iOS and Android and then creates the App object
// MaterialApp or CupertinoApp
// TODO: Add the check for switching between platforms
class AppLauncher extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: UIShell(),
    );
  }
}
