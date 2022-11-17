import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasks_app/const/color.dart';

class TopDoctor extends StatelessWidget {
  const TopDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: double.infinity,
          height: 110.h,
          color: scaffoldColor,
        )
      ],
    );
  }
}
