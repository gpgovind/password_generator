import 'dart:async';

import 'package:flutter/material.dart';
import 'package:password_generator/view/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
          child: Stack(
            children: [
              const Positioned(
                top: 30,
                left: 2,
                child: Text(
                  'protect your privacy',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
              const Positioned(
                top: 80,
                left: 3,
                child: Text('Generate A Strong Password',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w300,
                        color: Colors.white)),
              ),
              Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'lib/assets/Animation - 1708319867491.gif',
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
