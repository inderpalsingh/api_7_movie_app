import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'home/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const HomePage()));
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0f3bf17),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                height: 200,
                child: Image.asset('assets/images/playbutton.png')
              ),
            ),
            const SizedBox(height: 100),
            const Text('Movies, Tailers and TV Shows', style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText('Check your favourite show & movies', textStyle: const TextStyle(color: Colors.white,fontSize: 15))
              ],
            )

          ],
        ),
      ),
    );
  }
}
