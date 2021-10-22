import 'package:flutter/material.dart';

class DestinationActionsView extends StatelessWidget {
  const DestinationActionsView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          UserAction(text: 'Call', icon: Icons.call),
          UserAction(text: 'Route', icon: Icons.room_outlined),
          UserAction(text: 'Share', icon: Icons.share)
        ],
      ),
    );
  }
}

class UserAction extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  final TextStyle textStyle;

  const UserAction({ 
    Key? key, 
    required this.icon, 
    required this.text,
    this.iconColor = Colors.blue,
    this.textStyle = const TextStyle(
            color: Colors.blue,
            fontSize: 18
          )
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: iconColor, size: 28),
        Text(
          text,
          style: textStyle
        )
      ],
    );
  }
}