import 'package:flutter/material.dart';
import 'package:test_app/screens/hello_screen.dart';
// import 'package:test_app/screens/slide_three.dart';
// import 'package:test_app/screens/slide_two.dart';
import 'package:test_app/widgets/logo.dart';
import 'widgets/custom_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       fontFamily: 'Amiri',
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Logo(),
      routes: {
        HelloScreen.routeName:(ctx)=>HelloScreen(),
        // SlideTwo.routeName:(ctx)=>SlideTwo(),
        // SlideThree.routeName:(ctx)=>SlideThree(),

      },
    );
  }
}

