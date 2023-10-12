import 'dart:html';

import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:mobile_services/Locations/locations.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  final _beamerKey = GlobalKey<BeamerState>();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          margin: const EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
          child: SideNav(beamer: _beamerKey),
        ),
        Expanded(
            child: Container(
          clipBehavior: Clip.antiAlias,
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0)),
          child: Beamer(
            key: _beamerKey,
            routerDelegate: BeamerDelegate(locationBuilder: (routeInfo, data) {
              if (routeInfo.location!.contains('sales')) {
                return SalesLocation(routeInfo);
              }
              if (routeInfo.location!.contains('stocks')) {
                return StockLocation(routeInfo);
              }
              if (routeInfo.location!.contains('products')) {
                return ProductsLocation(routeInfo);
              }
              if (routeInfo.location!.contains('dashboard')) {
                return DashboardLocation(routeInfo);
              }
              if (routeInfo.location!.contains('settings')) {
                return SettingsLocation(routeInfo);
              }
              if (routeInfo.location!.contains('customers')) {
                return CustomerLocation(routeInfo);
              }
              return NotFound(path: routeInfo.location!.toString());
            }),
          ),
        ))
      ],
    );
  }
}

class SideNav extends StatefulWidget {
  final GlobalKey<BeamerState> beamer;
  const SideNav({Key? key, required this.beamer}) : super(key: key);

  @override
  State<SideNav> createState() => _SideNavState();
}

class _SideNavState extends State<SideNav> {
  int selected = -1;
  @override
  void initState() {
    super.initState();
  }

  List<String> navItems = [
    'Dashboard',
    'Sales',
    'Stock',
    'Products',
    'Customers',
    'Settings'
  ];

  List<String> navs = [
    '/dashboard',
    '/sales',
    '/stock',
    '/products',
    '/customers',
    '/settings'
  ];

  @override
  Widget build(BuildContext context) {
    final path = (context.currentBeamLocation.state as BeamState).uri.path;

    if (path.contains('/dashboard')) {
      selected = 0;
    } else if (path.contains('/sales')) {
      selected = 1;
    } else if (path.contains('/stock')) {
      selected = 2;
    } else if (path.contains('/products')) {
      selected = 3;
    } else if (path.contains('/customers')) {
      selected = 4;
    } else if (path.contains('/settings')) {
      selected = 5;
    }
    return Container(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center, children: getNavItems()),
    );
  }

  getNavItems() {
    List<Widget> navItemWidgets = [];

    for (var item in navItems) {
      navItemWidgets.add(AnimatedContainer(
        key: ValueKey(item),
        width: 120.0,
        duration: const Duration(milliseconds: 375),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: selected == navItems.indexOf(item)
              ? Colors.grey[850]
              : Colors.white,
        ),
        child: Material(
          animationDuration: Duration(milliseconds: 375),
          color: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          clipBehavior: Clip.antiAlias,
          child: InkWell(
            onTap: () {
              setState(() {
                widget.beamer.currentState?.routerDelegate
                    .beamToNamed(navs[navItems.indexOf(item)]);
                selected = navItems.indexOf(item);
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                item,
                style: TextStyle(
                  color: selected == navItems.indexOf(item)
                      ? Colors.white
                      : Colors.grey[850],
                ),
              ),
            ),
          ),
        ),
      ));
    }
    return navItemWidgets;
  }
}
