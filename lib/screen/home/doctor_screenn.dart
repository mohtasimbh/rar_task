import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:tasks_app/const/color.dart';
import 'package:tasks_app/screen/home/doctor_profile.dart';
import 'package:tasks_app/widget/backbtn.dart';

class DoctorScreen extends StatelessWidget {
  const DoctorScreen({Key? key}) : super(key: key);

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
            'Doctor',
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w700),
          ),
          leading: const BackWidget(),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
                child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const DoctorProfile()));
              },
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  itemCount: 10,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
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
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        width: double.infinity,
                        height: 110,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Expanded(
                                  flex: 5,
                                  child: CircleAvatar(
                                    radius: 80,
                                    backgroundImage: AssetImage(
                                      'assets/images/profile.png',
                                    ),
                                  )),
                              Expanded(
                                  flex: 10,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Dr. Ishtiuq Ahmed Chowdhury',
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.black,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
                                        'General Practitioner',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Text(
                                        'Somerian Clinic - Dubai',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            height: 15,
                                            width: 30,
                                            decoration: const BoxDecoration(
                                                color: Color(0xFFFF0000),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(3.0),
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
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          const Icon(
                                            Icons.alarm,
                                            size: 12,
                                          ),
                                          const SizedBox(
                                            width: 5,
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
                    );
                  }),
            )),
          ),
        ));
  }
}
