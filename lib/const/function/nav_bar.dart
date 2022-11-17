import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:tasks_app/const/color.dart';

class MyHomeBottomNavBar extends StatelessWidget {
  const MyHomeBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.h,
      color: Colors.white,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildContainerBottomNav(IconlyLight.add_user),
            buildContainerBottomNav(IconlyLight.time_circle),
            buildContainerBottomNav(IconlyLight.home, isSelected: true),
            buildContainerBottomNav(IconlyLight.paper),
            buildContainerBottomNav(IconlyLight.profile),
          ],
        ),
      ),
    );
  }

  Container buildContainerBottomNav(IconData icon, {isSelected = false}) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? scaffoldColor : Colors.white,
        shape: BoxShape.circle,
      ),
      height: 50,
      width: 50,
      child: Icon(icon, color: isSelected ? Colors.white : Colors.black),
    );
  }
}
