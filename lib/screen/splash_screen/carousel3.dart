import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasks_app/const/color.dart';
import 'package:tasks_app/screen/auth_screen/sign_in.dart';
import 'package:tasks_app/widget/button.dart';

class Carousel3 extends StatelessWidget {
  const Carousel3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 55.h,
          ),
          Flexible(
              flex: 3,
              child: Image.asset(
                'assets/carousel3.png',
                height: 300.h,
                width: 300.h,
              )),
          SizedBox(
            height: 55.h,
          ),
          Flexible(
            flex: 4,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: scaffoldColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.r),
                  topRight: Radius.circular(40.r),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 52.h,
                  ),
                  Text(
                    'Find your doctor',
                    style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(33.0),
                    child: Text(
                        '"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident"',
                        style: TextStyle(
                            letterSpacing: 1,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                        textAlign: TextAlign.center),
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  ButtonApp(
                      text: 'Get Started',
                      press: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const SignIn()));
                      },
                      color: Colors.white,
                      textcolor: scaffoldColor)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
