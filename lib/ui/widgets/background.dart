import 'dart:math' as math;
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const backgroundGradient = BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 0.8],
          colors: [
            Color(0xff2E305F),
            Color(0xff202333)
          ]
        )
      );

    return Stack(
      children: [
        Container( decoration: backgroundGradient ),
        const Positioned(
          child: _PinkBox(),
          top: -100,
          left: -25,
        )
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  const _PinkBox({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -math.pi / 5,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(80),
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(251, 142, 172, 1),
            ]
          )
        ),
      ),
    );
  }
}