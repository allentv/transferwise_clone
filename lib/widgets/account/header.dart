import 'package:flutter/material.dart';

import 'modal_items.dart';

class AccountHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          Icons.notifications_none,
          color: Colors.blue,
        ),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20.0),
                ),
              ),
              context: context,
              builder: (builder) {
                return MoreSection();
              },
            );
          },
          child: Icon(
            Icons.more_horiz,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
