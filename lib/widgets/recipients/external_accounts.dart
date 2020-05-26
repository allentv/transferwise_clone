import 'package:flutter/material.dart';

import '../../util/utils.dart';

class ExternalAccountsList extends StatelessWidget {
  final List externalAccounts;

  ExternalAccountsList(this.externalAccounts);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: externalAccounts
            .map<Widget>(
              (account) => ExternalAccount(account),
            )
            .toList(),
      ),
    );
  }
}

class ExternalAccount extends StatelessWidget {
  final Map<String, String> account;

  ExternalAccount(this.account);

  @override
  Widget build(BuildContext context) {
    final String currency = this.account['currency'];
    final String shortName = this.account['shortName'];
    final _rowHeight = 40.0;

    return Container(
      height: 50.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: _rowHeight,
            height: _rowHeight,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(_rowHeight),
            ),
            alignment: Alignment.center,
            child: Text(
              extractShortRepr(shortName),
              style: TextStyle(
                color: Colors.grey[500],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '$shortName',
                style: TextStyle(
                  color: Colors.blue[800],
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                '$currency account',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
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
