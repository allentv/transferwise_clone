import "package:flutter/material.dart";

class TWBottomNavBar extends StatefulWidget {
  Function _activeScreenCallback;

  TWBottomNavBar(this._activeScreenCallback);

  @override
  _TWBottomNavBarState createState() =>
      _TWBottomNavBarState(_activeScreenCallback);
}

class _TWBottomNavBarState extends State<TWBottomNavBar> {
  int _currentlyActive = 0;
  Function _activeScreenCallback;

  _TWBottomNavBarState(this._activeScreenCallback);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      // elevation: 25.0,
      currentIndex: _currentlyActive,
      onTap: (int currentIndex) {
        setState(() {
          _currentlyActive = currentIndex;
          _activeScreenCallback(_currentlyActive);
        });
      },
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          title: Text('Activity'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.credit_card),
          title: Text('Account'),
        ),
        BottomNavigationBarItem(
          // TODO: Add the curved border
          icon: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
              ),
              Icon(
                Icons.call_made,
                size: 32,
                color: Colors.white,
              ),
            ],
          ),
          title: Text('Send'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.group),
          title: Text('Recipients'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.redeem),
          title: Text('Invite'),
        ),
      ],
    );
  }
}
