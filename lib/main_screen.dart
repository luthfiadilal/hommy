import 'package:flutter/material.dart';
import 'package:hommy/data/near_houses.dart';
import 'package:hommy/explore.dart';
import 'package:hommy/home.dart';
import 'package:hommy/profile.dart';
import 'package:hommy/setting.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreenApp extends StatelessWidget {
  const MainScreenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Naerhouses> nearHouseList = Naerhouses.nearhouseList;
  int currentPageIndex = 0;

  Widget _getContent() {
    switch (currentPageIndex) {
      case 0:
        return Home();
      case 1:
        return Explore(nearhouseList: nearHouseList);
      case 2:
        return const Setting();
      case 3:
        return const Profile();
      default:
        return Home();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        toolbarHeight: 162,
        backgroundColor: const Color.fromARGB(255, 0, 41, 75),
        titleSpacing: 0,
        flexibleSpace: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 15, right: 15, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Hommy',
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      Text(
                        'Find your dream home',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          color: Color.fromARGB(255, 182, 182, 182),
                        ),
                      ),
                    ],
                  ),
                ),

                // Search Bar
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: SizedBox(
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 16),
                        hintText: 'Search...',
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        elevation: 0,
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        indicatorColor: const Color.fromARGB(0, 27, 122, 199),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        selectedIndex: currentPageIndex,
        destinations: <Widget>[
          NavigationDestination(
            selectedIcon: SvgPicture.asset(
              "images/home_fill.svg",
              width: 30,
              height: 30,
              color: const Color.fromARGB(255, 0, 41, 75),
            ),
            label: "Home",
            icon: SvgPicture.asset(
              "images/home_line.svg",
              width: 30,
              height: 30,
              color: const Color.fromARGB(255, 109, 109, 109),
            ),
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              "images/compass_line.svg",
              width: 30,
              height: 30,
              color: const Color.fromARGB(255, 109, 109, 109),
            ),
            selectedIcon: SvgPicture.asset(
              "images/compass_fill.svg",
              width: 30,
              height: 30,
              color: const Color.fromARGB(255, 0, 41, 75),
            ),
            label: 'Explore',
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              "images/setting_line.svg",
              width: 30,
              height: 30,
              color: const Color.fromARGB(255, 109, 109, 109),
            ),
            selectedIcon: SvgPicture.asset(
              "images/setting_fill.svg",
              width: 30,
              height: 30,
              color: const Color.fromARGB(255, 0, 41, 75),
            ),
            label: 'Setting',
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              "images/person_line.svg",
              width: 30,
              height: 30,
              color: const Color.fromARGB(255, 109, 109, 109),
            ),
            selectedIcon: SvgPicture.asset(
              "images/person_fill.svg",
              width: 30,
              height: 30,
              color: const Color.fromARGB(255, 0, 41, 75),
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: _getContent(),
    );
  }
}
