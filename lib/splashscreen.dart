import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/widgets.dart';

import 'home.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/onboard.jpg',
                ),
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: Colors.black.withOpacity(0),
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Center(
                  child: Container(
                    width: 300,
                    height: 300,
                    child: Image.asset(
                      'assets/images/logo.png',
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_circle_right_outlined,
                      color: Colors.white,
                      size: 70,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
