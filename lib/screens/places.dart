import 'package:flutter/material.dart';
import 'package:pode_app/constants.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pode_app/screens/job_request.dart';

class Places extends StatefulWidget {
  const Places({super.key});

  @override
  State<Places> createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int currentIndex = 0;

  _appBar(height) => PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, height + 100),
        child: Stack(
          children: <Widget>[
            Container(
              child: Center(
                child: Text(
                  "Places",
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
                  padding: EdgeInsets.only(left: 12.0,right: 12.0),
                  child: buildCard(),
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
            navigate();
            
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

  Card buildCard() {
    var heading = 'Place Name';
    var subheading = 'Location Country';
    var cardImage =
        Image.asset(
                              'images/maps.jpg',
                              
                            );
    var supportingText =
        '';
    return Card(
        elevation: 4.0,
        child: Column(
          children: [
            ListTile(
              title: Text(heading),
              subtitle: Text(subheading),
              trailing: Icon(Icons.location_on),
            ),
            Container(
              height: 200.0,
              // child: Ink.image(
              //   image: cardImage,
              //   fit: BoxFit.cover,
              // ),
              child: Image.asset(
                              'images/maps.jpg',
                              
                            ),
            ),
            // Container(
            //   padding: EdgeInsets.all(16.0),
            //   alignment: Alignment.centerLeft,
            //   child: Text(supportingText),
            // ),
            ButtonBar(
              children: [
                
                TextButton(
                  child: const Text('Open'),
                  onPressed: () {/* ... */},
                )
              ],
            )
          ],
        ));
  }
}
