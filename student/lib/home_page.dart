import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    // Update the state of the app
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Tab 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Tab 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Tab 3',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      backgroundColor: const Color.fromARGB(222, 255, 255, 255),
      body: Column(children: [
        Container(
          child: Stack(children: <Widget>[
            Container(
              child: Container(
                margin: const EdgeInsets.only(top: 0, left: 0),
                width: 500,
                height: 200,
                decoration: const BoxDecoration(
                  color: Colors.orange,
                  // gradient: LinearGradient(
                  //   colors: [
                  //     Color.fromARGB(255, 18, 24, 190),
                  //   ],
                  // ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(90),
                      bottomRight: Radius.circular(90)),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(
                          left: 0.0, top: 30.0, right: 0.0, bottom: 0.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(80.0),
                        child: Image.asset(
                          'assets/test.png',
                          height: 100,
                          width: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 150,
              width: 250,
              margin: const EdgeInsets.only(top: 150, left: 75),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                      margin: const EdgeInsets.only(
                        top: 35.0,
                        left: 0.0,
                        right: 0.0,
                        bottom: 0.0,
                      ),
                      // color: Colors.yellow,
                      child: Text(
                        "GAURSUNDAR PRABHU",
                        style: GoogleFonts.notoSans(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          // color: Color.fromARGB(176, 0, 0, 0))),
                          color: Colors.brown,
                        ),
                      )),
                  Container(
                      margin: const EdgeInsets.only(
                        top: .0,
                        left: 0.0,
                        right: 5.0,
                        bottom: 0.0,
                      ),
                      // color: Colors.yellow,
                      child: Text(
                        "FOLK ID: 1234567890",
                        style: GoogleFonts.notoSans(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          // color: Color.fromARGB(176, 0, 0, 0))),
                          color: Colors.brown,
                        ),
                      ))
                ],
              ),
            ),
          ]),
        ),
        IndexedStack(
          children: [
            Text("Tab 1"),
            Container(
                margin: const EdgeInsets.only(
                  top: .0,
                  left: 0.0,
                  right: 5.0,
                  bottom: 0.0,
                ),
                // color: Colors.yellow,
                child: Text(
                  "FOLK ID: 1234567890",
                  style: GoogleFonts.notoSans(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    // color: Color.fromARGB(176, 0, 0, 0))),
                    color: Colors.brown,
                  ),
                )),
            Text("Tab 3"),
          ],
        ),
      ]),
    );
  }
}
