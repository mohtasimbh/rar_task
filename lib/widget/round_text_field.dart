import 'package:flutter/material.dart';
import 'package:tasks_app/const/color.dart';
import 'package:tasks_app/widget/text_field.dart';

class RoundTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundTextField(
      {Key? key,
      required this.hintText,
      required this.icon,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldCon(
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: scaffoldColor,
            ),
            hintText: hintText,
            border: InputBorder.none),
      ),
    );
  }
}
