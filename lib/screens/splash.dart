import 'dart:async';

import 'package:flutter/material.dart';
import 'can_places.dart';
import 'can_job_request.dart';

/*Splash Screen*/
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 15),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Can_Job_Request())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(50, 140, 115, 1),
      body: Center(
        child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/logoPode.png',
                      height: 270,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.only(top: 20, right: 50, left: 50),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          text:
                              'Being a Person With a disability does not mean  being less qualified\nYou ',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                              color: Colors.white,
                              fontFamily: 'Montserrat'),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Can!',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                    color: Colors.white,
                                    fontFamily: 'Montserrat')),
                          ],
                        ),
                      ),
                    )),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
