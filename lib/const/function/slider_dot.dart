import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tasks_app/const/color.dart';
import 'package:tasks_app/screen/splash_screen/carousel1.dart';
import 'package:tasks_app/screen/splash_screen/carousel2.dart';
import 'package:tasks_app/screen/splash_screen/carousel3.dart';

class SlideeDot extends StatefulWidget {
  const SlideeDot({super.key});

  @override
  State<SlideeDot> createState() => _SlideeDotState();
}

class _SlideeDotState extends State<SlideeDot> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 750.h,
            child: PageView(
              controller: _controller,
              children: const [
                Carousel1(),
                Carousel2(),
                Carousel3(),
              ],
            ),
          ),
          SmoothPageIndicator(
            controller: _controller,
            count: 3,
            effect: ExpandingDotsEffect(
              activeDotColor: Colors.white,
              dotColor: Colors.white,
              dotHeight: 12.h,
              dotWidth: 12.h,
              spacing: 12.h,
            ),
          ),
        ],
      ),
    );
  }
}
