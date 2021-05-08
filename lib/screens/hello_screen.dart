import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:test_app/widgets/custom_widget.dart';

class HelloScreen extends StatefulWidget {
  static const routeName = '/Hello Screen';

  @override
  _HelloScreenState createState() => _HelloScreenState();
}

class _HelloScreenState extends State<HelloScreen> {
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final heightQuery =  MediaQuery.of(context).size.height;
     final widthQuery =  MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: Stack(
          fit: StackFit.loose,
          children: [
            PageView(
              controller: _pageController,
              children: [
                CustomWidget(
                  backgroundImage: 'assets/images/Mask_Group_5.png',
                  title: "مرحبا بك",
                  text:
                      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى،',
                  image: 'assets/images/Price_pana.png',
                ),
                CustomWidget(
                  backgroundImage: 'assets/images/Mask_Group_5.png',
                  title: "تصفية متقدمة",
                  text:
                      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى،  ',
                  image: 'assets/images/Filter-rafiki.png',
                ),
                CustomWidget(
                  backgroundImage: 'assets/images/Mask_Group_5.png',
                  title: "الدفع عبر الانترنت",
                  text:
                      'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى،  ',
                  image: 'assets/images/Mobile payments-pana.png',
                ),
              ],
            ),
            Column(

              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: 3,
                    effect: WormEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      dotColor: Colors.grey,
                      activeDotColor: Colors.red,
                    ),
                    onDotClicked: (index) => _pageController.animateToPage(index,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInCubic),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(10),
                  onTap: () {
                    _pageController.nextPage(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInCubic);
                  },
                  child: Container(
                    height: heightQuery*.055,
                    width: widthQuery*.638,
                    //  padding: EdgeInsets.only(),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      'متابعة',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
