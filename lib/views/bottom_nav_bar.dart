import 'package:doctor_appointment_design/controller/nav_controller.dart';
import 'package:doctor_appointment_design/screens/appointment_screen.dart';
import 'package:doctor_appointment_design/screens/home_screen.dart';
import 'package:doctor_appointment_design/screens/profile_screen.dart';
import 'package:doctor_appointment_design/screens/search_doctors_screen.dart';
import 'package:doctor_appointment_design/screens/top_doctors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatefulWidget {
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentScreen = 0;

  final List<Widget> screens = [
    HomeScreen(),
    TopDoctorsScreen(),
    SearchDoctorScreen(),
    AppointmentScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    NavigationController navControl =
        Provider.of<NavigationController>(context, listen: false);
    return Scaffold(
      body: screens[currentScreen],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.orange),
        child: BottomNavigationBar(
          onTap: (index) => setState(() => currentScreen = index),
          //backgroundColor: Colors.green,
          selectedItemColor: Color(0xFF555FD2),
          elevation: 5,
          items: [
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.home,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.stethoscope,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.search,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.clipboard,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: FaIcon(
                  FontAwesomeIcons.userCircle,
                ),
                label: ''),
          ],
        ),
      ),
    );
  }
}
