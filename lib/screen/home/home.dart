import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tasks_app/const/catagory_model.dart';
import 'package:tasks_app/const/color.dart';
import 'package:tasks_app/const/service_model.dart';
import 'package:tasks_app/screen/home/catagory_screen.dart';
import 'package:tasks_app/screen/home/doctor_profile.dart';
import 'package:tasks_app/screen/home/doctor_screenn.dart';
import 'package:tasks_app/screen/home/service_screen.dart';
import 'package:tasks_app/widget/catagory_widget.dart';
import 'package:tasks_app/widget/round_text_field.dart';
import 'package:tasks_app/widget/service_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF5FF),
      body: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Container(
              padding: const EdgeInsets.only(right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Find your medical',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Solution!',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w700),
                  ),
                  RoundTextField(
                    hintText: 'Search',
                    icon: Icons.search,
                    onChanged: (String value) {},
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 22),
                    decoration: BoxDecoration(
                        color: const Color(0xFF4F46E5),
                        borderRadius: BorderRadius.all(Radius.circular(10.r))),
                    height: 138.h,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Doctor Appointment',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Text(
                          'Search your doctor and book an appointment here',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          height: 32.h,
                        ),
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.r))),
                          height: 24.h,
                          width: 88.w,
                          child: Text(
                            'Book Appointment',
                            style: TextStyle(
                                color: scaffoldColor,
                                fontSize: 9.sp,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Center(
              child: SmoothPageIndicator(
                controller: _controller,
                count: 4,
                effect: ExpandingDotsEffect(
                  activeDotColor: scaffoldColor,
                  dotColor: Colors.black12,
                  dotHeight: 12,
                  dotWidth: 12,
                  spacing: 12,
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Category (Specialties)',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700),
                ),
                InkWell(
                  onTap: (() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const CatagoryScreenn()));
                  }),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Row(
                      children: [
                        Text(
                          'View All',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        Icon(
                          IconlyBold.plus,
                          color: scaffoldColor,
                          size: 15.sp,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            SizedBox(
              height: 160.h,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  itemCount: CatagoryModel.item.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return CatagoryWidget(
                      item: CatagoryModel.item[index],
                    );
                  }),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Service',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700),
                ),
                InkWell(
                  onTap: (() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ServiceScreen()));
                  }),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Row(
                      children: [
                        Text(
                          'View All',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        Icon(
                          IconlyBold.plus,
                          color: scaffoldColor,
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 150.h,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  itemCount: ServiceList.service.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return ServiceWidget(
                      item: ServiceList.service[index],
                    );
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Doctors',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700),
                ),
                InkWell(
                  onTap: (() {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const DoctorScreen()));
                  }),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Row(
                      children: [
                        Text(
                          'View All',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400),
                        ),
                        Icon(
                          IconlyBold.plus,
                          color: scaffoldColor,
                          size: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 12.h,
            ),
            //qq
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const DoctorProfile()));
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 16, left: 5),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.white,
                  ),
                  height: 110.h,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Image.asset(
                            'assets/images/profile.png',
                          ),
                        ),
                        Expanded(
                            flex: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Dr. Ishtiuq Ahmed Chowdhury',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  'General Practitioner',
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  'Somerian Clinic - Dubai',
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 15.h,
                                      width: 30.w,
                                      decoration: BoxDecoration(
                                          color: const Color(0xFFFF0000),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.r))),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              '4.5',
                                              style: TextStyle(
                                                  fontSize: 10.sp,
                                                  color: Colors.white),
                                            ),
                                            const Icon(
                                              IconlyBold.star,
                                              size: 10,
                                              color: Colors.white,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    const Icon(
                                      Icons.alarm,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      '10:00  AM-  8.45 PM',
                                      style: TextStyle(
                                          fontSize: 12.sp,
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12.h,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const DoctorProfile()));
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 16, left: 5),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 4,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.white,
                  ),
                  height: 110.h,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 5,
                          child: Image.asset(
                            'assets/images/profile.png',
                          ),
                        ),
                        Expanded(
                            flex: 10,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Dr. Ishtiuq Ahmed Chowdhury',
                                  style: TextStyle(
                                      fontSize: 14.sp,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  'General Practitioner',
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  'Somerian Clinic - Dubai',
                                  style: TextStyle(
                                      fontSize: 12.sp,
                                      color: Colors.black87,
                                      fontWeight: FontWeight.w400),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 15.h,
                                      width: 30.w,
                                      decoration: BoxDecoration(
                                          color: const Color(0xFFFF0000),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10.r))),
                                      child: Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Row(
                                          children: const [
                                            Text(
                                              '4.5',
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Colors.white),
                                            ),
                                            Icon(
                                              IconlyBold.star,
                                              size: 10,
                                              color: Colors.white,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    const Icon(
                                      Icons.alarm,
                                      size: 12,
                                    ),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    const Text(
                                      '10:00  AM-  8.45 PM',
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
