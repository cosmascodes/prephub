import 'package:flutter/material.dart';
import 'package:prephub/Dashboard/pages/chat.dart';
import 'package:prephub/Dashboard/pages/courses.dart';
import 'package:prephub/Dashboard/pages/dashboard.dart';
import 'package:prephub/Dashboard/pages/profile.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List pages = [
    const Dashboard(),
    const Courses(),
    const Chat(),
    const Profile(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: const Color.fromARGB(229, 136, 145, 255),
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        unselectedFontSize: 16,
        selectedFontSize: 16,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(LineAwesomeIcons.home),
          ),
          BottomNavigationBarItem(
            label: 'Courses',
            icon: Icon(LineAwesomeIcons.book),
          ),
          BottomNavigationBarItem(
            label: 'Chat',
            icon: Icon(LineAwesomeIcons.inbox),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(LineAwesomeIcons.user),
          ),
        ],
      ),
    );
  }
}
