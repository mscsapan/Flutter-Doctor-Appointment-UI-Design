import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputField extends StatelessWidget {
  final IconData icon;
  final IconData? suffix;
  final String hintText;
  final bool? obscureText;
  const InputField(
      {Key? key,
      required this.icon,
      required this.hintText,
      this.suffix,
      this.obscureText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: SizedBox(
          height: 50.0,
          child: TextField(
            enabled: false,
            decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                      style: BorderStyle.none,
                      color: Colors.transparent,
                      width: 0.0),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: Color(0xFFF3F4F8),
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Icon(icon, size: 22, color: Colors.grey),
                ),
                suffixIcon: Icon(suffix, size: 22, color: Colors.grey),
                hintText: hintText),
            obscureText: obscureText ?? false,
          ),
        ),
      ),
    );
  }
}
