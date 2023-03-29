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
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int currentIndex = 0;

  _appBar(height) => PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, height + 100),
        child: Stack(
          children: <Widget>[
            Container(
              child: Center(
                child: Text(
                  "Job Request",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontFamily: 'Montserrat'),
                ),
              ),
              color: kPrimaryColor,
              height: height + 75,
              width: MediaQuery.of(context).size.width,
            ),
            Container(),
            Positioned(
              top: 100.0,
              left: 20.0,
              right: 20.0,
              child: AppBar(
                backgroundColor: Colors.white,
                leading: IconButton(
                    icon: new Icon(Icons.arrow_back),
                    color: Theme.of(context).primaryColor,
                    onPressed: () {
                      _scaffoldKey.currentState?.openDrawer();
                    }),
                primary: false,
                title: TextField(
                    decoration: InputDecoration(
                        hintText: "Location",
                        border: InputBorder.none,
                        hintStyle: TextStyle(
                            color: Colors.grey, fontFamily: 'Montserrat'))),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_downward,
                        color: Theme.of(context).primaryColor),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.filter_list_rounded,
                        color: Theme.of(context).primaryColor),
                    onPressed: () {},
                  )
                ],
              ),
            )
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(AppBar().preferredSize.height),
      body: Center(
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Positioned(child: Text(
                                    "Jaime Camilo",
                                    style: TextStyle(
                                      fontSize: 32,
                                      color: const Color(0xFFFFFFFF),
                                    ),
                                  ),),
                                  const SizedBox(height: 8),
                                  Text(
                                    "Desenvolvedor",
                                    style: TextStyle(
                                      fontSize: 20,
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
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Im Student and",
                              style: TextStyle(fontWeight: FontWeight.normal),
                            ),
                            
                          ],
                        ),
                        const SizedBox(width: 8),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                          ],
                        )
                      ],
                    ),
                  ),
                  //const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8.0, bottom: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      ]
                    ),
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
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: currentIndex,
        onItemSelected: (index) {
          setState(() {
            currentIndex = index;
            //navigate();
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.location_on),
            title: Text('Places'),
            activeColor: kPrimaryColor,
            inactiveColor: kPrimaryColor,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.announcement_outlined),
            title: Text('Complaints'),
            activeColor: kPrimaryColor,
            inactiveColor: kPrimaryColor,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.history_edu_rounded),
            title: Text('Stories'),
            activeColor: kPrimaryColor,
            inactiveColor: kPrimaryColor,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.bookmark),
            title: Text('Job Request'),
            activeColor: kPrimaryColor,
            inactiveColor: kPrimaryColor,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
            activeColor: kPrimaryColor,
            inactiveColor: kPrimaryColor,
          ),
        ],
      ),
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

  void navigate(){
    if (currentIndex==0) {
      Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Places()),
                          );
    }

    if (currentIndex==3) {
      Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Job_Request()),
                          );
    }
  }
}
  

