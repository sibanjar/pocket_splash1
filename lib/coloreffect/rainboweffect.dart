import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shimmer/shimmer.dart';
class Rainbow extends StatelessWidget {
  const Rainbow({super.key});

  @override
  Widget build(BuildContext context) {
    // Widget title =  Animate(
    //   effects: [ShimmerEffect(duration: 1200.ms, color: const Color(0xFF80DDFF)),CustomEffect(builder: (BuildContext context, double value, Widget child) {  })],
    //   child: Container(
    //     height: 200,
    //     width: 200,
    //     decoration: BoxDecoration(
    //       border: Border.all(width: 5,color: Colors.white),
    //           color: Colors.purple
    //     ),
        // child: Text('data').animate(onPlay: (controller) => controller.repeat())
        //     .shimmer(duration: 1200.ms, color: const Color(0xFF80DDFF)),
        // 'Flutter Animate Examples',
        // style: TextStyle(
        //   fontWeight: FontWeight.w900,
        //   fontSize: 40,
        //   color: Color(0xFF666870),
        //   // height: 1,
        //   // letterSpacing: -1,
        // ),
    //   ),
    // );

    // here's an interesting little trick, we can nest Animate to have
    // effects that repeat and ones that only run once on the same item:
    // title = title
    //     .animate(onPlay: (controller) => controller.repeat())
    //     .shimmer(duration: 1200.ms, color: const Color(0xFF80DDFF));
        // .animate() // this wraps the previous Animate in another Animate
        // .fadeIn(duration: 1200.ms, curve: Curves.easeOutQuad)
        // .slide();


    Widget box=  BoxDecoration(
      border: Border.all(width: 5),
    ) as Widget;
    box =box.animate(onPlay: (controller) => controller.repeat())
       .shimmer(duration: 1200.ms, color: const Color(0xFF80DDFF));

    return  Scaffold(
      body: SafeArea(
        child: Container(
          width: 100, // Adjust the width and height as needed
          height: 100,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: box,
                ),
              ),
              Shimmer.fromColors(
                baseColor: Colors.grey, // Color of the shimmer effect
                highlightColor: Color(0xFF80DDFF), // Color of the border
                child: Container(
                  width: 10, // Adjust this value to control the shimmer's intensity
                  height: 10, // Adjust this value to control the shimmer's intensity
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 5, // Width of the border
                      color: Colors.transparent, // Make the border transparent
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

