import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NotificationBell extends StatelessWidget {
  const NotificationBell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.hardEdge,
      children: [
        FaIcon(FontAwesomeIcons.bell),
        Positioned(
          top: 2.0,
          right: -1,
          child: Container(
              height: 10.0,
              width: 10.0,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Text('1',
                  style: TextStyle(fontSize: 10.0),
                  textAlign: TextAlign.center)),
        ),
      ],
    );
  }
}
