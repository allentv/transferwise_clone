import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

class InvitePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _InvitePageState();
}

class _InvitePageState extends State<InvitePage> {
  @override
  Widget build(BuildContext context) {
    final _screenWidth = MediaQuery.of(context).size.width;
    final _screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.only(top: 40),
      width: _screenWidth,
      height: _screenHeight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Invite your friends',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 30.0, 0, 30.0),
              child: SvgPicture.asset(
                'assets/images/network.svg',
                width: _screenWidth * 0.70,
              ),
            ),
          ),
          RichText(
            text: TextSpan(
              text: 'You earn ',
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(
                  text: '€60',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(text: ' for every 3 friends who transfer over €250. '),
                TextSpan(
                  text: 'Learn more >',
                  style: TextStyle(color: Colors.blue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      await launch(
                          'https://transferwise.com/help/21/inviting-friends/2666686/transferwise-referral-terms',
                          forceWebView: true);
                    },
                ),
              ],
            ),
          ),
          Container(
            width: _screenWidth,
            padding: EdgeInsets.only(top: 20),
            child: OutlineButton(
              onPressed: () => {},
              borderSide: BorderSide(color: Colors.blue),
              child: Text(
                'Invite friends',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          )
        ],
      ),
    );
  }
}
