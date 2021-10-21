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

  final List<IconData> icons = [
    FontAwesomeIcons.home,
    FontAwesomeIcons.stethoscope,
    FontAwesomeIcons.search,
    FontAwesomeIcons.clipboardList,
    FontAwesomeIcons.userCircle,
  ];

  final List<String> labels = [
    'Home',
    'Doctors',
    'Search',
    'Appointment',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    NavigationController navControl =
        Provider.of<NavigationController>(context, listen: false);
    return Scaffold(
      body: screens[currentScreen],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.white),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (index) => setState(() => currentScreen = index),
          //backgroundColor: Colors.green,
          selectedItemColor: Color(0xFF555FD2),
          elevation: 5,
          currentIndex: currentScreen,
          items: List.generate(
              icons.length,
              (index) => BottomNavigationBarItem(
                  icon: FaIcon(icons[index]), label: labels[index])),
        ),
      ),
    );
  }
}
