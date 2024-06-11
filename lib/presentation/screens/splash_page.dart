import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

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
            const Text('Check your favourite show & movies', style: TextStyle(color: Colors.white,fontSize: 15)),

          ],
        ),
      ),
    );
  }
}
