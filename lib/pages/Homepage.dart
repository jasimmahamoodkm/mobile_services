import 'package:flutter/material.dart';

import '../widgets/navbar.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
            Color(0xFFF8FBFF),
            Color(0xFFFCFDFD),
          ])),
      child: SingleChildScrollView(
        child: Column(
          children: [NavBar()],
        ),
      ),
    );
  }
  //   Scaffold(
  //       appBar: AppBar(
  //         title: const Text("Mobile Service"),
  //         actions: [
  //           const Text("Dashboard"),
  //           const Text("Sales"),
  //           const Text("Stock"),
  //           const IconButton(
  //             icon: Icon(Icons.library_books_rounded),
  //             onPressed: null,
  //           )
  //         ],
  //       ),
  //       body: ResponsiveLayout(
  //           mobileBody: const MobileBody(), desktopBody: const DesktopBody())

  //       // Container(
  //       //   decoration: BoxDecoration(
  //       //       gradient: LinearGradient(
  //       //           begin: Alignment.centerLeft,
  //       //           end: Alignment.centerRight,
  //       //           colors: [
  //       //         Color.fromRGBO(195, 20, 50, 1.0),
  //       //         Color.fromRGBO(36, 11, 54, 1.0),
  //       //       ])),
  //       //   child: SingleChildScrollView(
  //       //     child: Column(
  //       //       children: [
  //       //         //Navbar(),
  //       //         Padding(
  //       //           padding: const EdgeInsets.symmetric(
  //       //               vertical: 20.0, horizontal: 40.0),
  //       //           //child: LandingPage(),
  //       //         ),
  //       //       ],
  //       //     ),
  //       //   ),
  //       // ),
  //       );
  // }
}
