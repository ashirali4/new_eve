import 'package:flutter/material.dart';
import 'package:qr_event/screens/add_event.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  var signuparg=settings.arguments;



  switch (settings.name) {


    case '/add_event':
      return MaterialPageRoute(builder: (context) => Add_event());

  }
}