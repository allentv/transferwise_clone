import 'package:flutter/material.dart';
import '../widgets/recipients/external_accounts.dart';
import '../widgets/recipients/personal_accounts.dart';
import './page_data.dart';

class RecipientsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RecipientsPageState();
}

class _RecipientsPageState extends State<RecipientsPage> {
  String searchText = '';

  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;
    final _screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.all(0.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Spacer(),
                FlatButton(
                  onPressed: () {},
                  padding: EdgeInsets.zero,
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Recipients',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Container(
              width: _screenWidth,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Enter something to search',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  'My accounts',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            PersonalAccountsList(
              RECIPIENTS_DATA[RECIPIENTS_DATA_PERSONAL_KEY],
            ),
            Divider(
              thickness: 2.0,
            ),
            Row(
              children: [
                Text(
                  'External accounts',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            ExternalAccountsList(
              RECIPIENTS_DATA[RECIPIENTS_DATA_EXTERNAL_KEY],
            )
          ],
        ),
      ),
    );
  }
}
