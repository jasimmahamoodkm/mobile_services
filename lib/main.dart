import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';
import 'package:mobile_services/pages/Dashboard.dart';

import 'Locations/locations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  //Routing

  final routerDelegate = BeamerDelegate(
    transitionDelegate: const NoAnimationTransitionDelegate(),
    locationBuilder: (routeInformation, _) {
      if (routeInformation.location!.contains('sales')) {
        return SalesLocation(routeInformation);
      }
      return DefaultLocation(routeInformation);
    },
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routeInformationParser: BeamerParser(),
        routerDelegate: routerDelegate);
  }
}
