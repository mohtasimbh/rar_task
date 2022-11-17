import 'package:flutter/material.dart';
import 'package:tasks_app/const/catagory_model.dart';
import 'package:tasks_app/const/color.dart';
import 'package:tasks_app/widget/backbtn.dart';
import 'package:tasks_app/widget/catagory_widget.dart';

class CatagoryScreenn extends StatelessWidget {
  const CatagoryScreenn({Key? key}) : super(key: key);

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
        title: const Text(
          'Category (Specialties)',
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w700),
        ),
        leading: const BackWidget(),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GridView.count(
            crossAxisCount: 2,
            childAspectRatio: 300 / 250,
            children: List.generate(CatagoryModel.item.length, (index) {
              return CatagoryWidget(
                item: CatagoryModel.item[index],
              );
            }),
          ),
        ),
      ),
    );
  }
}
