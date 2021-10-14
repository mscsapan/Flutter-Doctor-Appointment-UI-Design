import 'package:flutter/material.dart';

class HorizontalLine extends StatelessWidget {
  const HorizontalLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Row(
        children: [
          Expanded(
            child: Divider(
              color: Colors.black,
              height: 50.0,
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Text('OR',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey))),
          Expanded(
            child: Divider(
              color: Colors.black,
              height: 50.0,
            ),
          ),
        ],
      ),
    );
  }
}
