import 'package:flutter/material.dart';
import 'package:pode_app/constants.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:getwidget/getwidget.dart';
import 'package:pode_app/screens/job_request.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Places extends StatefulWidget {
  const Places({super.key});

  @override
  State<Places> createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int currentIndex = 0;
  final int value = 3;
  double? _ratingValue;

  Widget starRating() {
    return RatingBar(
        initialRating: 0,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        ratingWidget: RatingWidget(
            full: const Icon(Icons.star, color: Colors.orange),
            half: const Icon(
              Icons.star_half,
              color: Colors.orange,
            ),
            empty: const Icon(
              Icons.star_outline,
              color: Colors.orange,
            )),
        onRatingUpdate: (value) {
          setState(() {
            _ratingValue = value;
          });
        });
  }

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
                padding: EdgeInsets.only(left: 12.0, right: 12.0),
                child: buildCard(),
              );
            }))
          ],
        );
      }),
    );
  }

  Card buildCard() {
    var heading = 'Place Name';
    var subheading = 'Location Country';
    var cardImage = Image.asset(
      'images/maps.jpg',
    );
    var supportingText = '';
    return Card(
        elevation: 4.0,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: 16.0, right: 16.0, left: 16.0, bottom: 10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'images/maps.jpg',
                ),
              ),
            ),
            ListTile(
              title: Text(heading),
              subtitle: Text(subheading),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(5, (index) {
                  return Icon(
                    index < value ? Icons.star : Icons.star_border,
                    color: kPrimaryColor,
                  );
                }),
              ), //Icon(Icons.location_on),
            ),

            // Container(
            //   padding: EdgeInsets.all(16.0),
            //   alignment: Alignment.centerLeft,
            //   child: Text(supportingText),
            // ),
            ButtonBar(
              children: [
                TextButton(
                  child: const Text('Details'),
                  onPressed: () {/* ... */},
                )
              ],
            )
          ],
        ));
  }
}
