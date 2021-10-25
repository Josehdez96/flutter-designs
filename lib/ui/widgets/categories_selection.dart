import 'dart:ui';

import 'package:flutter/material.dart';

class CategoriesSelection extends StatelessWidget {
  const CategoriesSelection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        const TableRow(
          children: [
            _Category(text: 'General', icon: Icons.ac_unit, color: Colors.blue),
            _Category(text: 'Transport', icon: Icons.emoji_transportation, color: Colors.pinkAccent),
          ]
        ),
        TableRow(
          children: [
            const _Category(text: 'Bill', icon: Icons.wrong_location_rounded, color: Colors.purpleAccent),
            Container()
          ]
        ),
      ],
    );
  }
}

class _Category extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _Category({
    Key? key, 
    required this.icon, 
    required this.color, 
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _BackgroundCategory(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: color,
            child: Icon(icon),
            radius: 30,
          ),
          const SizedBox(height: 30),
          Text(
            text,
            style: TextStyle(
              color: color,
              fontSize: 18
            ),
          )
        ],
      )
    );
  }
}

class _BackgroundCategory extends StatelessWidget {
  final Widget child;

  const _BackgroundCategory({ 
    Key? key, 
    required this.child 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 6, left: 6, top: 18),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5 ),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(62, 66, 107, 0.7),
              borderRadius: BorderRadius.circular(20)
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}