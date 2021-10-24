import 'package:flutter/material.dart';

class ScrollScreen extends StatelessWidget {
  const ScrollScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5, 0.5],
            colors: [
              Color(0xff5EE8C5),
              Color(0xff30BAD6)
            ]
          )
        ),
        child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: const [
            _Page1(),
            _Page2()
          ],
        ),
      )
    );
  }
}

class _Page1 extends StatelessWidget {
  const _Page1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        _Background(),
        _MainContent()
      ]
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

class _Page2 extends StatelessWidget {
  const _Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () {},
          child: const Text(
            'Bienvenido',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40
            ),
          ),
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            backgroundColor: const Color(0xff0098FA),
            shape: const StadiumBorder()
          ),
        ),
      ),
    );
  }
}