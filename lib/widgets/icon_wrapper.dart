import 'package:flutter/material.dart';

/// Wraps an Icon with a white background and a gray circular border with
/// radius 50.0, which can be updated as an optional parameter
class IconWrapper extends StatefulWidget {
  final IconData icon;
  final double borderRadius;

  IconWrapper(this.icon, {this.borderRadius = 50.0});

  @override
  State<StatefulWidget> createState() => _IconWrapper();
}

class _IconWrapper extends State<IconWrapper> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: widget.borderRadius,
        height: widget.borderRadius,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.grey,
          ),
          borderRadius: BorderRadius.circular(widget.borderRadius),
        ),
        child: Icon(
          widget.icon,
          color: Colors.blue,
        ));
  }
}
