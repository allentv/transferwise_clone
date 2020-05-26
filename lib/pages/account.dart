import 'package:flutter/material.dart';

import '../widgets/account/details.dart';
import '../widgets/account/header.dart';
import '../widgets/account/services.dart';

class AccountPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AccountHeader(),
        AccountDetails(),
        AccountServices(),
      ],
    );
  }
}
