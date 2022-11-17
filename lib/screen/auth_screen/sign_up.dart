import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasks_app/const/color.dart';
import 'package:tasks_app/screen/auth_screen/sign_in.dart';
import 'package:tasks_app/screen/home/nav_bar_home.dart';
import 'package:tasks_app/widget/backbtn.dart';
import 'package:tasks_app/widget/button.dart';
import 'package:tasks_app/widget/round_text_field.dart';
import 'package:tasks_app/widget/round_text_field_pass.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: const BackWidget(),
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Create Account',
            style: TextStyle(
                color: Colors.black,
                fontSize: 24.sp,
                fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 30.h,
          ),
          RoundTextField(
            hintText: 'Name',
            icon: Icons.person,
            onChanged: (String value) {},
          ),
          RoundTextField(
            hintText: 'Email',
            icon: Icons.email,
            onChanged: (String value) {},
          ),
          RoundTextFieldPass(
            hintText: 'Password',
            icon: Icons.lock,
            onChanged: (String value) {},
          ),
          RoundTextFieldPass(
            hintText: 'Confirm Password',
            icon: Icons.lock,
            onChanged: (String value) {},
          ),
          Container(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: [
                Checkbox(
                  checkColor: Colors.white,
                  activeColor: scaffoldColor,
                  value: value,
                  onChanged: (value) {
                    setState(() {
                      this.value = value!;
                    });
                  },
                ),
                Text('Terms & Condition',
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                    textAlign: TextAlign.center),
              ],
            ),
          ),
          ButtonApp(
              text: 'Sign Up',
              press: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const BottomBarScreen()));
              },
              color: scaffoldColor,
              textcolor: Colors.white),
          SizedBox(
            height: 10.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Already have an account?',
                  style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                  textAlign: TextAlign.center),
              SizedBox(
                width: 5.w,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const SignIn()));
                },
                child: Text('Sign In!',
                    style: TextStyle(
                        letterSpacing: 1,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                        color: scaffoldColor),
                    textAlign: TextAlign.center),
              ),
            ],
          )
        ],
      ),
    );
  }
}
