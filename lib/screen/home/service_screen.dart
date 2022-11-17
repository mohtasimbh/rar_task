import 'package:flutter/material.dart';
import 'package:tasks_app/const/color.dart';
import 'package:tasks_app/const/service_model.dart';
import 'package:tasks_app/screen/home/doctor_screenn.dart';
import 'package:tasks_app/widget/backbtn.dart';
import 'package:tasks_app/widget/service_widget.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({Key? key}) : super(key: key);

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
          'Service',
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w700),
        ),
        leading: const BackWidget(),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 3,
            childAspectRatio: 300 / 250,
            children: List.generate(ServiceList.service.length, (index) {
              return ServiceWidget(
                item: ServiceList.service[index],
              );
            }),
          ),
        ),
      ),
    );
  }
}
