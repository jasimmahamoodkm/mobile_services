import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobile_services/pages/LandingScreen.dart';

import '../pages/Dashboard.dart';

class DefaultLocation extends BeamLocation<BeamState> {
  DefaultLocation(RouteInformation routeInformation) : super(routeInformation);

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      const BeamPage(
          key: ValueKey('asdasd'),
          child: Dashboard(),
          type: BeamPageType.fadeTransition)
    ];
  }

  @override
  List<Pattern> get pathPatterns => ['/'];
}

class DashboardLocation extends BeamLocation<BeamState> {
  DashboardLocation(RouteInformation routeInformation)
      : super(routeInformation);

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      const BeamPage(
          key: ValueKey('Dashboard'),
          child: LandingScreen(),
          type: BeamPageType.fadeTransition)
    ];
  }

  @override
  List<Pattern> get pathPatterns => ['/dashboard'];
}
