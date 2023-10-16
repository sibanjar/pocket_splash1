import 'package:flutter/material.dart';
import 'package:pocket_splash/splash1/splashdiscription1.dart';

class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:  CenteredIcon()
    );
  }
}

class CenteredIcon extends StatefulWidget {
  const CenteredIcon({super.key});

  @override
  State<CenteredIcon> createState() => _CenteredIconState();
}

class _CenteredIconState extends State<CenteredIcon> {
  double yOffset = 0.0;
  // bool showText = false;
  //bool _showContainer = false;
  bool isVisible = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      setState(() {
        yOffset = -250.0;
        //showText = true;
       // _showContainer = true;
        isVisible = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00658E),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
         children: [
             Align(
               alignment: Alignment(0, 0.5) ,
               child: AnimatedOpacity(
                 duration: const Duration(seconds: 3),
                 opacity: isVisible ? 1.0 : 0.0,
                 child: const Wrap(
                   children: [
                     SplashDiscription(number: 50, title: 'Total User'),
                     SplashDiscription(number: 50, title: 'Total Answered'),
                     SplashDiscription(number: 50, title: 'Users From Countries'),
                     SplashDiscription(number: 0, title: 'Trusted Since 2019'),
                       ],
                 ),
               ),
             ),
           AnimatedContainer(
             duration: const Duration(milliseconds: 500),
             alignment: Alignment.center,
             transform: Matrix4.translationValues(0.0, yOffset, 0.0),
             child: Image.asset('assets/images/PP-Logo.png',height: 110, width: 100,fit: BoxFit.fitHeight,),
           ),
         ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 15,right:15,bottom: 20),
        child: AnimatedOpacity(
          duration: const Duration(seconds: 2),
          opacity: isVisible ? 1.0 : 0.0,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor:Colors.white,
                textStyle: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold)
            ),
              onPressed: () {  },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Get Started",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                        color: Colors.blue),
                  ),
                  SizedBox(width: 10,),
                  Icon(Icons.arrow_forward_ios,color: Colors.blue,),
                ],
              )
          ),
        ),

      ),
    );
  }
}

