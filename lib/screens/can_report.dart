import 'package:flutter/material.dart';
import 'package:ink_page_indicator/ink_page_indicator.dart';
import 'package:pode_app/screens.dart';
import 'package:pode_app/screens/places.dart';

class Can_Report extends StatefulWidget {
  const Can_Report({super.key});

  @override
  State<Can_Report> createState() => _Can_ReportState();
}

class _Can_ReportState extends State<Can_Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromRGBO(50, 140, 115, 1), Colors.white],
            stops: [0.5, 0.5],
          ),
        ),
        child: Center(
          child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          height: 300,
                          width: 300,
                          child: Card(
                            semanticContainer: true,
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            child: Image.asset(
                              'images/i3.png',
                              height: 220,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            elevation: 5,
                            margin: EdgeInsets.all(10),
                          )),
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
                            text: 'You ',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 20,
                                color: Color.fromRGBO(50, 140, 115, 1),
                                fontFamily: 'Montserrat'),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Can ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                      color: Color.fromRGBO(50, 140, 115, 1),
                                      fontFamily: 'Montserrat')),
                              TextSpan(
                                  text:
                                      'Report complaint and tell your story of overcoming',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 20.0,
                                      color: Color.fromRGBO(50, 140, 115, 1),
                                      fontFamily: 'Montserrat')),
                            ],
                          ),
                        ),
                      )),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(50, 140, 115, 1),
                          foregroundColor: Colors.white,
                          shadowColor: Colors.greenAccent,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0)),
                          minimumSize: Size(250, 52), //////// HERE
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ScreenChange()),
                          );
                        },
                        child: Text('Finish'),
                      )
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
