import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Classify transaction',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 12),
        Text(
          'Classify this transaction into a particulary category.',
          style: TextStyle(
            fontSize: 16,
            color: Colors.white
          ),
        )
      ],
    );
  }
}