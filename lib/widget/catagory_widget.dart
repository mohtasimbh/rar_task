import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tasks_app/const/catagory_model.dart';
import 'package:tasks_app/screen/home/doctor_screenn.dart';

class CatagoryWidget extends StatelessWidget {
  final Item item;
  const CatagoryWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const DoctorScreen()));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
                color: Colors.white,
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            height: 140.h,
            width: 130.w,
            child: Column(
              children: [
                Image.asset(
                  item.image,
                  fit: BoxFit.cover,
                ),
                
                Text(
                  item.title,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  item.description,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 8.sp,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
