import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonApp extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textcolor;

  const ButtonApp(
      {Key? key,
      required this.text,
      required this.press,
      required this.color,
      required this.textcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        press();
      }),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(30.r),
          ),
        ),
        height: 44.h,
        width: 336.w,
        child: Text(
          text,
          style: TextStyle(
            color: textcolor,
            fontSize: 20.sp,
          ),
        ),
      ),
    );
  }
}
