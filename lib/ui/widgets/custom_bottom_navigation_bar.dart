import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      items: const [
        BottomNavigationBarItem(
          label: 'Calendar',
          icon: Icon(Icons.calendar_today_outlined)
        ),
        BottomNavigationBarItem(
          label: 'Graph',
          icon: Icon(Icons.insert_chart_outlined_outlined)
        ),
        BottomNavigationBarItem(
          label: 'Users',
          icon: Icon(Icons.contacts_outlined)
        )
      ]
    );
  }
}