import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qr_event/screens/tabs/milan_parties.dart';
import 'package:qr_event/screens/tabs/venice_events.dart';
import 'package:qr_event/screens/tabs/verona_events.dart';
class FilterEvents extends StatefulWidget {
  @override
  _FilterEventsState createState() => _FilterEventsState();
}

class _FilterEventsState extends State<FilterEvents> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).primaryColor,
              elevation: 0,
              title: Text("Filter Events"
              ,style: GoogleFonts.poppins(),),
              bottom: TabBar(
                  labelColor: Theme.of(context).primaryColor,
                  unselectedLabelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      color: Colors.white),

                  tabs: [
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Milan",style: GoogleFonts.poppins(),),
                      ),
                    ),
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Verona",style: GoogleFonts.poppins(),),
                      ),
                    ),
                    Tab(
                      child: Align(
                        alignment: Alignment.center,
                        child: Text("Parties",style: GoogleFonts.poppins(),),
                      ),
                    ),
                  ]
              ),
            ),
            body: TabBarView(children: [
              Milan_Parties(),
              Verona_Parties(),
              Venice_Parties(),
            ]),
          )
      )



    );
  }
}
