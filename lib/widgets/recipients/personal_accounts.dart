import 'package:flutter/material.dart';

import '../../util/utils.dart';
import '../../pages/page_data.dart';

class PersonalAccountsList extends StatelessWidget {
  final List personalAccounts;

  PersonalAccountsList(this.personalAccounts);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: personalAccounts
            .map<Widget>(
              (account) => PersonalAccount(account),
            )
            .toList(),
      ),
    );
  }
}

class PersonalAccount extends StatelessWidget {
  final Map<String, String> account;

  PersonalAccount(this.account);

  @override
  Widget build(BuildContext context) {
    final String currency = this.account['currency'];
    final String endingDigits = this.account['ending'];
    final String shortName = this.account['shortName'];

    final _rowHeight = 40.0;

    final userProfile = extractShortRepr(USER_INFO['fullName']);

    return Container(
      height: 50.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: _rowHeight,
            height: _rowHeight,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(_rowHeight),
            ),
            child: Text('$userProfile',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                )),
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '$shortName',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text('$currency ending in $endingDigits'),
            ],
          ),
          Spacer(),
          FlatButton(
            onPressed: () {},
            child: Text(
              'Send $currency',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
