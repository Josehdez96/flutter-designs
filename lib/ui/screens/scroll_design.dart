import 'package:flutter/material.dart';
import 'dart:math' as math;

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          _Background(),
          _MainContent()
        ]
      )
    );
  }
}

class _Background extends StatelessWidget {
  const _Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xff30BAD6),
        image: DecorationImage(
          image: AssetImage('assets/scroll-1.png'),
          fit: BoxFit.cover
        )
      ),
    );
  }
}

class _MainContent extends StatelessWidget {
  const _MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 60),
            const _InfoText(text: '11°'),
            const _InfoText(text: 'Miercoles'),
            Expanded(child: Container()),
            const RotatedBox(
              quarterTurns: 3,
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 100,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _InfoText extends StatelessWidget {
  final String text;

  const _InfoText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 50,
        fontWeight: FontWeight.w500
      ),
    );
  }
}