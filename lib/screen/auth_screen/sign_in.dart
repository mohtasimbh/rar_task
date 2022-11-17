import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasks_app/const/color.dart';
import 'package:tasks_app/screen/auth_screen/forget_password.dart';
import 'package:tasks_app/screen/auth_screen/sign_up.dart';
import 'package:tasks_app/screen/home/nav_bar_home.dart';
import 'package:tasks_app/widget/backbtn.dart';
import 'package:tasks_app/widget/button.dart';
import 'package:tasks_app/widget/round_text_field_pass.dart';
import 'package:tasks_app/widget/round_text_field.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: const BackWidget(),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/signin.png'),
            SizedBox(
              height: 24.h,
            ),
            Text(
              'Welcome Back!',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              'Sign In to continue',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 41.h,
            ),
            RoundTextField(
              hintText: 'Enter Your Email',
              icon: Icons.email,
              onChanged: (String value) {},
            ),
            RoundTextFieldPass(
              hintText: '*********',
              icon: Icons.lock,
              onChanged: (String value) {},
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
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
                      Text('Remember me',
                          style: TextStyle(
                              letterSpacing: 1,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                          textAlign: TextAlign.center),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const ForgetPasswors()));
                    },
                    child: Text('Forget password?',
                        style: TextStyle(
                            letterSpacing: 1,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                        textAlign: TextAlign.center),
                  ),
                ],
              ),
            ),
            ButtonApp(
                text: 'Sign In',
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
                Text('Don’t have an account?',
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
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignUpScreen()));
                  },
                  child: Text('Sign up!',
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
      ),
    );
  }
}
