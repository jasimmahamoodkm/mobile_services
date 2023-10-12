import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobile_services/pages/LandingScreen.dart';

import '../pages/Dashboard.dart';

class DefaultLocation extends BeamLocation<BeamState> {
  DefaultLocation(RouteInformation routeInformation) : super(routeInformation);

  @override
  List<Pattern> get pathPatterns => ['/'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    final pages = [
      const BeamPage(
          key: ValueKey('home'),
          title: 'Home',
          child: LandingScreen(),
          type: BeamPageType.fadeTransition),
    ];

    return pages;
  }
}

class SalesLocation extends BeamLocation<BeamState> {
  SalesLocation(RouteInformation routeInformation) : super(routeInformation);

  @override
  List<Pattern> get pathPatterns => ['/sales'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    final pages = [
      const BeamPage(
          key: ValueKey('sales'),
          title: 'Sales',
          child: Sales(),
          type: BeamPageType.fadeTransition),
    ];

    return pages;
  }
}

class StockLocation extends BeamLocation<BeamState> {
  StockLocation(RouteInformation routeInformation) : super(routeInformation);

  @override
  List<Pattern> get pathPatterns => ['/stock'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    final pages = [
      const BeamPage(
          key: ValueKey('stock'),
          title: 'Stocks',
          child: Stocks(),
          type: BeamPageType.fadeTransition),
    ];

    return pages;
  }
}

class DashboardLocation extends BeamLocation<BeamState> {
  DashboardLocation(RouteInformation routeInformation)
      : super(routeInformation);

  @override
  List<Pattern> get pathPatterns => ['/dashboard'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    final pages = [
      const BeamPage(
          key: ValueKey('dashboard'),
          title: 'Dashboard',
          child: Dashboard(),
          type: BeamPageType.fadeTransition),
    ];

    return pages;
  }
}

class ProductsLocation extends BeamLocation<BeamState> {
  ProductsLocation(RouteInformation routeInformation) : super(routeInformation);

  @override
  List<Pattern> get pathPatterns => ['/products'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    final pages = [
      const BeamPage(
          key: ValueKey('products'),
          title: 'Products',
          child: Products(),
          type: BeamPageType.fadeTransition),
    ];

    return pages;
  }
}

class SettingsLocation extends BeamLocation<BeamState> {
  SettingsLocation(RouteInformation routeInformation) : super(routeInformation);

  @override
  List<Pattern> get pathPatterns => ['/settings'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    final pages = [
      const BeamPage(
          key: ValueKey('settings'),
          title: 'Settings',
          child: Settings(),
          type: BeamPageType.fadeTransition),
    ];

    return pages;
  }
}

class CustomerLocation extends BeamLocation<BeamState> {
  CustomerLocation(RouteInformation routeInformation) : super(routeInformation);

  @override
  List<Pattern> get pathPatterns => ['/customers'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    final pages = [
      const BeamPage(
          key: ValueKey('customers'),
          title: 'Customers',
          child: Customers(),
          type: BeamPageType.fadeTransition),
    ];

    return pages;
  }
}

class NotfoundLocation extends BeamLocation<BeamState> {
  NotfoundLocation(RouteInformation routeInformation) : super(routeInformation);

  @override
  List<Pattern> get pathPatterns => ['*'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    final pages = [
      const BeamPage(
          key: ValueKey('notfound'),
          title: 'Not Found',
          child: Notfound(),
          type: BeamPageType.fadeTransition),
    ];

    return pages;
  }
}
