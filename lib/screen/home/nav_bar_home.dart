import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasks_app/const/color.dart';
import 'package:tasks_app/const/function/nav_bar.dart';
import 'package:tasks_app/screen/home/home.dart';
import 'package:tasks_app/widget/drawer_widget.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          size: 20,
          color: Colors.black,
        ),

        backgroundColor: lightBackgroundColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Hello, Cisco',
          style: TextStyle(
              color: Colors.black,
              fontSize: 14.sp,
              fontWeight: FontWeight.w700),
        ),
      ),
      drawer: const DrawerWidget(),
      body: const Home(),
      bottomNavigationBar: const MyHomeBottomNavBar(),
    );
  }
}
