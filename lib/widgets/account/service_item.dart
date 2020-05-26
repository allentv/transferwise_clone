import 'package:flutter/material.dart';
import '../icon_wrapper.dart';

class AccountServiceItem extends StatefulWidget {
  final IconData icon;
  final String title;
  final Widget next;

  AccountServiceItem(this.icon, this.title, this.next);

  @override
  _AccountServiceItemState createState() => _AccountServiceItemState();
}

class _AccountServiceItemState extends State<AccountServiceItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // TODO: load next widget or navigate to the next screen
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: IconWrapper(widget.icon),
            ),
            Container(
              child: Text(widget.title),
            ),
            Text(
              '>',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 22.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
