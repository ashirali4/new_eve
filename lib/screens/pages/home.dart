import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 70,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(100))),
              height: 150,
              width: 150,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: SvgPicture.asset(
                  "assets/event.svg",
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Welcome to Event QR Scan",
              style: GoogleFonts.poppins(
                  color: Colors.black87,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: box("add", "Add event"),
                        )),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: box("qr-code", "Scan QR"),
                        )),
                      ],
                    ),
                    SizedBox(
                      height: 05,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: box("eventlist", "All Events"),
                        )),
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: box("filter", "Filter Events"),
                        )),
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }

  Widget box(String assetsname, String stri) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).primaryColor, width: 3),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Container(
              height: 50,
              width: 50,
              child: SvgPicture.asset(
                "assets/" + assetsname + ".svg",
                color: Theme.of(context).primaryColor,
              ),
            ),
            SizedBox(
              height: 05,
            ),
            Text(stri,
                style: GoogleFonts.poppins(
                    color: Theme.of(context).primaryColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w600))
          ],
        ),
      ),
    );
  }
}
