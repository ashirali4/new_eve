import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';
class Venice_Parties extends StatefulWidget {
  @override
  _Milan_PartiesState createState() => _Milan_PartiesState();
}

class _Milan_PartiesState extends State<Venice_Parties> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 40,),

          Padding(
            padding: const EdgeInsets.all(15),
            child: Text("Venice Events",
              style: GoogleFonts.poppins(
                  fontSize: 21
              ),),
          ),
          SizedBox(height: 1,),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {

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
                                    "Venice Party ",
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
                                  "Venice",
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
