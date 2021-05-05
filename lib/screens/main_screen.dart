import 'package:flutter/material.dart';
import 'package:test_app/widgets/logo.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  static const routeName = '/mainScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Test App'),
        ),
        body: NewWidget(title: "مرحبا بك",));
  }
}

class NewWidget extends StatelessWidget {
  final String title;

  const NewWidget({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            Container(
              child: Center(
                child: Image.asset('assets/images/Mask_Group_5.png'),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'assets/fonts/Amiri-Bold.ttf'
                      ),

                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    height: 104,
                    child: Text(
                        'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى،'),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Center(
                    child: Container(
                      child: Image.asset(
                        'assets/images/Price_pana.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {},
                    child: Center(
                      child: Container(
                        alignment: Alignment.center,
                        height: 45,
                        width: 277,
                        //  padding: EdgeInsets.only(),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          'متابعة',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
