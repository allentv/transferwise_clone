import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../icon_wrapper.dart';

class MoreSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Spacer(),
            MoreSectionItem(Icons.settings, 'Settings'),
            Spacer(),
            Divider(
              thickness: 1.0,
            ),
            Spacer(),
            MoreSectionItem(FaIcon(FontAwesomeIcons.question).icon, 'Help'),
            Spacer(),
            Divider(
              thickness: 1.0,
            ),
            Spacer(),
            MoreSectionItem(
                FaIcon(FontAwesomeIcons.signOutAlt).icon, 'Log out'),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class MoreSectionItem extends StatefulWidget {
  final IconData icon;
  final String label;

  MoreSectionItem(this.icon, this.label);

  @override
  State<StatefulWidget> createState() => _MoreSectionItemState();
}

class _MoreSectionItemState extends State<MoreSectionItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconWrapper(
          widget.icon,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            widget.label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
