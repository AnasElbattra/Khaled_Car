import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomWidget extends StatelessWidget {
  final String backgroundImage;
  final String title;
  final String text;
  final String image;

  const CustomWidget({
    this.backgroundImage,
    this.title,
    this.text,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    final heightQuery = MediaQuery.of(context).size.height;
    //final width =  MediaQuery.of(context).size.width;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        child: Stack(
          children: [
            Container(
              child: Center(
                child: Image.asset(
                  backgroundImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    child: Text(
                      title,
                      style: TextStyle(
                          fontSize: 35,
                          fontFamily: 'nizar-cocon-kurdish',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600]),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 45),
                    margin: EdgeInsets.only(top: 89),
                  ),
                  SizedBox(
                    height: heightQuery * .027,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 45),
                    child: Text(
                      text,
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Amiri',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600]),
                    ),
                  ),
                  SizedBox(
                    height: heightQuery * .02,
                  ),
                  Center(
                    child: Container(
                      height: heightQuery * .356,
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: heightQuery * .16,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
