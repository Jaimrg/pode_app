import 'package:flutter/material.dart';
import 'package:pode_app/constants.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pode_app/screens/job_request.dart';
import 'package:pode_app/screens/places.dart';
import 'package:pode_app/screens/complaints.dart';
import 'package:pode_app/screens/settings.dart';

class ScreenChange extends StatefulWidget {
  const ScreenChange({super.key});

  @override
  State<ScreenChange> createState() => _ScreenChangeState();
}

class _ScreenChangeState extends State<ScreenChange> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int currentIndex = 0;

  _appBar(height) => PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, height + 100),
        child: Stack(
          children: <Widget>[
            Container(
              child: Center(
                child: Text(
                  currentIndex==0?"Places":currentIndex==1?"Complaints":currentIndex==3?"Complaints":currentIndex==2?"Stories":"Settings",
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
        child: currentIndex==0?Places():currentIndex==1?complaints():currentIndex==2?complaints():Settings()),
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
}