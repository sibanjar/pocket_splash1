import 'package:flutter/material.dart';
import 'package:pocket_splash/coloreffect/rainboweffect.dart';
import 'package:pocket_splash/splash1/splash1.dart';
import 'package:pocket_splash/splash2/splash2.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Align(
            child: Column(
            children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context,
              MaterialPageRoute(builder:(context)=> const SplashScreen1()));
            },
                child: const Text('Splash without animate package')
            ),
              ElevatedButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder:(context)=> const SplashScreen2()));
              },
                  child: const Text('Splash with animate package')
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder:(context)=> const Rainbow()));
              },
                  child: const Text('Rainbow text')
              ),
            ],
            ),
          ),
        ),
      ),
    );
  }
}
