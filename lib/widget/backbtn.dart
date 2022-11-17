import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasks_app/const/color.dart';

class BackWidget extends StatelessWidget {
  const BackWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              Icons.arrow_back_ios,
              color: scaffoldColor,
              size: 16,
            ),
            Text('Back',style: TextStyle(color: scaffoldColor,fontSize: 10.sp),)
          ],
        ),
      ),
    );
  }
}