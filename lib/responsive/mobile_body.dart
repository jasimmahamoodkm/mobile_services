import 'package:flutter/material.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                    Color(0xFFF8FBFF),
                    Color(0xFFFCFDFD),
                  ])),
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    //Navbar(),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.0, horizontal: 40.0),
                      //child: LandingPage(),
                    ),
                  ],
                ),
              ),
            ),
            // child: Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Container(
            //     color: Colors.deepPurple[400],
            //   ),
            // ),
          ),
          // Expanded(
          //     child: ListView.builder(
          //         itemCount: 8,
          //         itemBuilder: (context, index) {
          //           return Padding(
          //             padding: const EdgeInsets.all(8.0),
          //             child: Container(
          //               color: Colors.deepPurple[300],
          //               height: 120,
          //             ),
          //           );
          //         })),
        ],
      ),
    );
  }
}
