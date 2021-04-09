import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
class EventList extends StatefulWidget {



  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}
List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'Walking Tour and Gonadola Ride',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/murano.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
];
class _DestinationScreenState extends State<EventList> {
  Text _buildRatingStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐ ';
    }
    stars.trim();
    return Text(stars);
  }


  List<Destination> destinations = [
    Destination(
      imageUrl: 'assets/images/venice.jpg',
      city: 'Venice',
      country: 'Italy',
      description: 'Visit Venice for an amazing and unforgettable adventure.',
      activities: activities,
    ),
    Destination(
      imageUrl: 'assets/images/paris.jpg',
      city: 'Paris',
      country: 'France',
      description: 'Visit Paris for an amazing and unforgettable adventure.',
      activities: activities,
    ),
    Destination(
      imageUrl: 'assets/images/newdelhi.jpg',
      city: 'New Delhi',
      country: 'India',
      description: 'Visit New Delhi for an amazing and unforgettable adventure.',
      activities: activities,
    ),
    Destination(
      imageUrl: 'assets/images/saopaulo.jpg',
      city: 'Sao Paulo',
      country: 'Brazil',
      description: 'Visit Sao Paulo for an amazing and unforgettable adventure.',
      activities: activities,
    ),
    Destination(
      imageUrl: 'assets/images/newyork.jpg',
      city: 'New York City',
      country: 'United States',
      description: 'Visit New York for an amazing and unforgettable adventure.',
      activities: activities,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 40,),

          Padding(
            padding: const EdgeInsets.all(15),
            child: Text("All Events",
            style: GoogleFonts.poppins(
              fontSize: 21
            ),),
          ),
          SizedBox(height: 1,),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
              itemCount: destinations[0].activities.length,
              itemBuilder: (BuildContext context, int index) {
                Activity activity = destinations[0].activities[0];
                return Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                      height: 120.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(100.0, 10.0, 0, 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 200.0,
                                  child: Text(
                                    activity.name,
                                    style: GoogleFonts.poppins(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),

                              ],
                            ),
                           Row(
                             children: [
                               Icon(LineIcons.globe,size: 20,),
                               Text(
                                 activity.type,
                                 style: GoogleFonts.poppins(
                                   color: Colors.grey,
                                 ),
                               ),
                             ],
                           ),

                            SizedBox(height: 08.0),
                            Row(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(5.0),

                                  decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(05.0),
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    "25 April 2021",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white
                                    ),
                                  ),
                                ),
                                SizedBox(width: 15,),
                                Container(
                                  padding: EdgeInsets.all(5.0),

                                  decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(05.0),
                                  ),
                                  alignment: Alignment.center,
                                  child: Row(
                                    children: [
                                      Icon(LineIcons.bell,color: Colors.white,size: 20,),
                                    Text(
                                    "Add Reminder",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white
                                    ),)
                                    ],
                                  ),
                                ),


                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20.0,
                      top: 15.0,
                      bottom: 15.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child:  Container(
                          width: 100.0,
                           child:Image.asset("assets/york.jpg",
                           fit: BoxFit.cover,)
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
class Activity {
  String imageUrl;
  String name;
  String type;
  List<String> startTimes;
  int rating;
  int price;

  Activity({
    this.imageUrl,
    this.name,
    this.type,
    this.startTimes,
    this.rating,
    this.price,
  });
}

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
  });
}

