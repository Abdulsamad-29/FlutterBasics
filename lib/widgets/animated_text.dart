import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Text',style: TextStyle(color: Colors.white),),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          // AnimatedTextKit(animatedTexts: [
          //   TypewriterAnimatedText('Abdul Samad',textStyle: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),
          //   speed: Duration(milliseconds: 400))
          // ],
          // totalRepeatCount: 4,
          // pause: Duration(milliseconds: 200),
          // displayFullTextOnTap: true,
          // stopPauseOnTap: true,
          // ),
        
          // AnimatedTextKit(animatedTexts: [
          //   RotateAnimatedText('Hello',
          //   textStyle: 
          //   TextStyle(
          //     fontSize: 30,
          //     fontWeight:FontWeight.w600,
          //     color: Colors.red,
          //     )
          //   ),
          //    RotateAnimatedText('Beautiful',
          //   textStyle: 
          //   TextStyle(
          //     fontSize: 30,
          //     fontWeight:FontWeight.w600,
          //     color: Colors.red,
          //     )
          //     ),
          //     RotateAnimatedText('World',
          //   textStyle: 
          //   TextStyle(
          //     fontSize: 30,
          //     fontWeight:FontWeight.w600,
          //     color: Colors.red,
          //     )
          //   ),
           AnimatedTextKit(animatedTexts: [
            WavyAnimatedText(
              'HELLO WORLD',
              textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            WavyAnimatedText(
              'HELLO WORLD',
              textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ])
        ]),
          // totalRepeatCount: 4,
          // pause: Duration(milliseconds: 200),
          // displayFullTextOnTap: true,
          // stopPauseOnTap: true,
          ),
        );
  }
}
