import 'package:flutter/material.dart';
import 'package:flutter_designs/ui/widgets/background.dart';
import 'package:flutter_designs/ui/widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Background(),
          HomeBody()
        ],
      ),
    );
  }
}