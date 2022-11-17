import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:tasks_app/const/color.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 240,
      child: ListView(
        children: [
           Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Text(
              'Home',
              style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                  color: tileTextColor),
            ),
          ),
          ListTile(
            leading: Icon(
              IconlyBold.home,
              color: scaffoldColor,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: scaffoldColor),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              IconlyBold.shield_done,
              color: tileTextColor,
            ),
            title: Text(
              'Dashboard',
              style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: tileTextColor),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              IconlyBold.paper,
              color: tileTextColor,
            ),
            title: Text(
              'Report',
              style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: tileTextColor),
            ),
            onTap: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10,right: 20),
            child: Row(
              children: const [
                Text(
                  'Book Appointment',
                  style: TextStyle(
                      letterSpacing: 1,
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                      color: Colors.black54),
                ),
                Spacer(),
                Icon(Icons.more_vert,color: Colors.black54,size: 20,)
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.save,
              color: tileTextColor,
            ),
            title: Text(
              'Doctors',
              style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: tileTextColor),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.folder_special,
              color: tileTextColor,
            ),
            title: Text(
              'Specialties',
              style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: tileTextColor),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.flash_on,
              color: tileTextColor,
            ),
            title: Text(
              'Appointment',
              style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: tileTextColor),
            ),
            onTap: () {},
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Text(
              'Settings',
              style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                  color: Colors.black54),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: tileTextColor,
            ),
            title: Text(
              'Manage Appt.',
              style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: tileTextColor),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.home_work,
              color: tileTextColor,
            ),
            title: Text(
              'Home Care',
              style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: tileTextColor),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.find_in_page,
              color: tileTextColor,
            ),
            title: Text(
              'Find Us',
              style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: tileTextColor),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.contact_page,
              color: tileTextColor,
            ),
            title: Text(
              'Contact Us',
              style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: tileTextColor),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: tileTextColor,
            ),
            title: Text(
              'Health Tip',
              style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: tileTextColor),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.mouse,
              color: tileTextColor,
            ),
            title: Text(
              'My Profile',
              style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: tileTextColor),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: tileTextColor,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                  letterSpacing: 1,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: tileTextColor),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
