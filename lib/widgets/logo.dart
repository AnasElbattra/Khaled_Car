import 'dart:async';

import 'package:flutter/material.dart';
import 'package:test_app/screens/hello_screen.dart';
// import 'package:test_app/screens/slide_three.dart';


class Logo extends StatefulWidget {
  const Logo({Key key}) : super(key: key);

  @override
  _LogoState createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  void initState() {
    Timer(Duration(seconds:3 ),(){
      Navigator.of(context).pushNamed(HelloScreen.routeName);
      // TODO: implement initState
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {


    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          color: Colors.white,
          child: Image.asset(
            'assets/images/Mask_Group_5.png',

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
