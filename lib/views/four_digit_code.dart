import 'package:flutter/material.dart';

import 'all_list_items.dart';

class FourDigitCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
            List.generate(code.length, (index) => buildFourDigit(code[index])));
  }
}

Widget buildFourDigit(String code) {
  return Container(
    height: 40.0,
    width: 50.0,
    margin: EdgeInsets.only(right: 8.0),
    decoration: BoxDecoration(
      color: Color(0xFFdddff6),
      borderRadius: BorderRadius.circular(6.0),
    ),
    child: Align(
      alignment: Alignment.center,
      child: Text(
        code,
        style: TextStyle(
            fontWeight: FontWeight.bold, color: Colors.black, fontSize: 18.0),
      ),
    ),
  );
}
