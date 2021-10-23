import 'package:flutter/material.dart';
import 'package:flutter_designs/ui/pages/initial_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Designs',
      initialRoute: 'initial_page',
      routes: {
        'initial_page': ( _ ) => const InitialPage()
      },
      // home: const Scaffold(
      //   body: InitialPage(),
      // ),
      theme: ThemeData.light(),
    );
  }
}