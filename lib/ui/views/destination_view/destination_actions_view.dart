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
          _UserAction(text: 'CALL', icon: Icons.call),
          _UserAction(text: 'ROUTE', icon: Icons.room_outlined),
          _UserAction(text: 'SHARE', icon: Icons.share)
        ],
      ),
    );
  }
}

class _UserAction extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  final TextStyle textStyle;

  const _UserAction({ 
    Key? key, 
    required this.icon, 
    required this.text,
    this.iconColor = Colors.blue,
    this.textStyle = const TextStyle(
            color: Colors.blue,
            fontSize: 17
          )
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: iconColor, size: 28),
        const SizedBox(height: 10),
        Text(
          text,
          style: textStyle
        )
      ],
    );
  }
}