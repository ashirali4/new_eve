import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

class Add_event extends StatefulWidget {
  @override
  _Add_eventState createState() => _Add_eventState();
}

class _Add_eventState extends State<Add_event> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add a Event",
          style: GoogleFonts.poppins(),
        ),
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text(
                "Choose Image",
                style: GoogleFonts.poppins(),
              ),
              SizedBox(
                height: 10,
              ),
              FDottedLine(
                color: Colors.lightBlue[600],
                height: 150.0,
                width: MediaQuery.of(context).size.width,
                strokeWidth: 3.0,
                dottedLength: 10.0,
                space: 5.0,
                child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                        child: SvgPicture.asset(
                      "assets/gallery.svg",
                      height: 50,
                      color: Colors.lightBlue[600],
                    ))),

                /// Set corner
                corner: FDottedLineCorner.all(10),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 03),
                        child: TextFormField(
                          decoration: new InputDecoration(
                            prefixIcon: Icon(LineIcons.pen),
                            labelText: "Event Name",
                            hintText: "Write Here",
                            fillColor: Colors.white,
                            border: new OutlineInputBorder(
                              borderSide: new BorderSide(width: 2),
                            ),
                            //fillColor: Colors.green
                          ),
                          keyboardType: TextInputType.text,
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 03),
                        child: TextFormField(
                          decoration: new InputDecoration(
                            prefixIcon: Icon(LineIcons.locationArrow),
                            labelText: "Event Location",
                            hintText: "Location here",
                            fillColor: Colors.white,
                            border: new OutlineInputBorder(
                              borderSide: new BorderSide(width: 2),
                            ),
                            //fillColor: Colors.green
                          ),
                          keyboardType: TextInputType.text,
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 03),
                        child: TextFormField(
                          initialValue:
                              DateTime.now().toString().substring(0, 10),
                          decoration: new InputDecoration(
                            prefixIcon: Icon(LineIcons.calendar),

                            labelText: "Event Date",
                            hintText: "Write Here",
                            fillColor: Colors.white,
                            border: new OutlineInputBorder(
                              borderSide: new BorderSide(width: 2),
                            ),
                            //fillColor: Colors.green
                          ),
                          keyboardType: TextInputType.text,
                          style: GoogleFonts.raleway(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              _selectDate(context);
                            },
                            child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100))),
                                child: Icon(
                                  LineIcons.calendarCheck,
                                  color: Colors.white,
                                )),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 120,
              ),
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    child: Text("Add Event".toUpperCase(),
                        style: GoogleFonts.poppins(fontSize: 14)),
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.lightBlue[600],
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(08)),
                                    side: BorderSide(
                                      color: Colors.lightBlue[600],
                                    )))),
                    onPressed: () => null),
              )
            ],
          ),
        ),
      ),
    );
  }
}
