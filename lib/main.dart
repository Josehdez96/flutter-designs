import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_designs/ui/screens/home_screen.dart';
import 'package:flutter_designs/ui/screens/initial_screen.dart';
import 'package:flutter_designs/ui/screens/scroll_design.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Designs',
      initialRoute: 'home_screen',
      routes: {
        'initial_page': ( _ ) => const InitialScreen(),
        'scroll_screen': ( _ ) => const ScrollScreen(),
        'home_screen': ( _ ) => const HomeScreen() 
      },
      // home: const Scaffold(
      //   body: InitialPage(),
      // ),
      theme: ThemeData.light(),
    );
  }
}