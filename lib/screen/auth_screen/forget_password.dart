import 'package:flutter/material.dart';
import 'package:tasks_app/const/color.dart';
import 'package:tasks_app/screen/auth_screen/sign_up.dart';
import 'package:tasks_app/widget/backbtn.dart';
import 'package:tasks_app/widget/button.dart';
import 'package:tasks_app/widget/round_text_field.dart';

class ForgetPasswors extends StatefulWidget {
  const ForgetPasswors({Key? key}) : super(key: key);

  @override
  State<ForgetPasswors> createState() => _ForgetPassworsState();
}

class _ForgetPassworsState extends State<ForgetPasswors> {
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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Forget Password',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 41,
            ),
            RoundTextField(
              hintText: 'Enter Your Email',
              icon: Icons.email,
              onChanged: (String value) {},
            ),
            ButtonApp(
                text: 'Submit',
                press: () {},
                color: scaffoldColor,
                textcolor: Colors.white),
          ],
        ),
      ),
    );
  }
}
