import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class AccountDetails extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  @override
  Widget build(BuildContext context) {
    final _screenHeight = MediaQuery.of(context).size.height;
    final _screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.grey[400],
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
          child: Text(
            'AV',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        Container(
          height: _screenHeight * 0.4,
          child: Image.asset('assets/images/bank-card.png'),
        ),
        Text('Get your own TransferWise debit'),
        Text(
          'MasterCard and spend in the local currency.',
          textAlign: TextAlign.center,
        ),
        Text(' Wherever you are'),
        Container(
          width: _screenWidth * 0.65,
          height: _screenHeight * 0.1,
          padding: EdgeInsets.all(8.0),
          child: RaisedButton(
            color: Colors.blue,
            onPressed: () {},
            child: Text('Order your card',
                style: TextStyle(
                  color: Colors.white,
                )),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(15.0),
          child: RichText(
            text: TextSpan(
                text: 'Learn more',
                recognizer: TapGestureRecognizer()
                  ..onTap = () async {
                    await launch(
                        'https://transferwise.com/help/21/inviting-friends/2666686/transferwise-referral-terms',
                        forceWebView: true);
                  },
                style: TextStyle(
                  color: Colors.blue,
                )),
          ),
        ),
      ],
    );
  }
}
