import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test_app/screens/main_screen.dart';

class Logo extends StatefulWidget {
  const Logo({Key key}) : super(key: key);

  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  void initState() {
    Timer(Duration(seconds:3 ),(){
      Navigator.of(context).pushNamed(MainScreen.routeName);
      // TODO: implement initState
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {


    return Stack(
      children: [
        Container(
          color: Colors.white,
          child: Center(
            child: Image.asset(
              'assets/images/Mask_Group_5.png',

            ),
          ),
        ),
        Container(
          child: Center(
            child: Image.asset(
              'assets/images/logo_PNG.png',
            ),
          ),
        ),
      ],
    );
  }
}
