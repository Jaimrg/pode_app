import 'package:flutter/material.dart';
import 'package:pode_app/constants.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pode_app/screens/places.dart';

class Job_Request extends StatefulWidget {
  const Job_Request({super.key});

  @override
  State<Job_Request> createState() => _Job_RequestState();
}

class _Job_RequestState extends State<Job_Request> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(builder: (context, snapshot) {
        return Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Expanded(child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
              return Container(
                padding: EdgeInsets.only(bottom: 12.0),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      constraints: BoxConstraints(maxWidth: 400),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 150,
                            child: Stack(
                              children: [
                                ClipPath(
                                  //clipper: AvatarClipper(),
                                  child: Container(
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: kPrimaryColor,
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 11,
                                  top: 50,
                                  child: Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 50,
                                        backgroundImage: NetworkImage(
                                            "https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/22/22a4f44d8c8f1451f0eaa765e80b698bab8dd826_full.jpg"),
                                      ),
                                      const SizedBox(width: 20),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Positioned(
                                            child: Text(
                                              "Jaime Camilo",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: const Color(0xFFFFFFFF),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 8),
                                          Text(
                                            "Marketing Professional",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: kPrimaryColor,
                                            ),
                                          ),
                                          const SizedBox(height: 8)
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 30,
                            ),
                            child: Flexible(
                              child: new Container(
                                padding: new EdgeInsets.only(right: 13.0),
                                child: new Text(
                                  'Im a sales rep dedicated to helping local Oklahoma City services businesses grow their customer base and decrease customer churn.',
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: new TextStyle(
                                    fontSize: 13.0,
                                    fontFamily: 'Roboto',
                                    color: new Color(0xFF212121),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          //const SizedBox(height: 40),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 2, left: 8.0, right: 8.0, bottom: 8.0),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  TextButton(
                                    child: const Text('Details'),
                                    onPressed: () {/* ... */},
                                  )
                                ]),
                          ),
                          const SizedBox(height: 8)
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }))
          ],
        );
      }),
    );
  }

  TextStyle buildMontserrat(
    Color color, {
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return TextStyle(
      fontSize: 18,
      color: color,
      fontWeight: fontWeight,
    );
  }
}
