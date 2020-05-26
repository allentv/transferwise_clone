import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'service_item.dart';

class AccountServices extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AccountServicesState();
}

class _AccountServicesState extends State<AccountServices> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Account services',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14.0,
          ),
        ),
        Column(
          children: [
            Divider(
              color: Colors.black26,
            ),
            AccountServiceItem(
              FaIcon(FontAwesomeIcons.university).icon,
              'Bank Details',
              null,
            ),
            Divider(
              color: Colors.black26,
            ),
            AccountServiceItem(Icons.calendar_today, 'Direct Debits', null),
            Divider(
              color: Colors.black26,
            ),
            AccountServiceItem(
              FaIcon(FontAwesomeIcons.copy).icon,
              'Statements',
              null,
            ),
          ],
        ),
      ],
    );
  }
}
