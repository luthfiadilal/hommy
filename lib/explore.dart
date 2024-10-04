import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:hommy/data/near_houses.dart';

class Explore extends StatelessWidget {
  final List<Naerhouses> nearhouseList;

  const Explore({super.key, required this.nearhouseList});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 10.0,
        left: 15.0,
        right: 15.0,
      ),
      child: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children: [
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: SizedBox(
                child: Card(
                  color: const Color.fromARGB(255, 0, 41, 75),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Image.asset("images/home1.jpeg", fit: BoxFit.cover),
                        const Center(
                          child: Text("Forest",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: SizedBox(
                child: Card(
                  color: const Color.fromARGB(255, 0, 41, 75),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Image.asset("images/home2.jpeg", fit: BoxFit.cover),
                        const Center(
                          child: Text("Forest",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: SizedBox(
                child: Card(
                  color: const Color.fromARGB(255, 0, 41, 75),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Image.asset("images/home3.jpeg", fit: BoxFit.cover),
                        const Center(
                          child: Text("Forest",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: SizedBox(
                child: Card(
                  color: const Color.fromARGB(255, 0, 41, 75),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Image.asset("images/home4.jpeg", fit: BoxFit.cover),
                        const Center(
                          child: Text("Forest",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 4,
              mainAxisCellCount: 2,
              child: SizedBox(
                child: Card(
                  color: const Color.fromARGB(255, 0, 41, 75),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Image.asset("images/home5.jpeg", fit: BoxFit.cover),
                        const Center(
                          child: Text("Forest",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Additional grid tiles
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 2,
              child: SizedBox(
                child: Card(
                  color: const Color.fromARGB(255, 0, 41, 75),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Image.asset("images/home6.jpeg", fit: BoxFit.cover),
                        const Center(
                          child: Text("Forest",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 1,
              child: SizedBox(
                child: Card(
                  color: const Color.fromARGB(255, 0, 41, 75),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Image.asset("images/home7.jpeg", fit: BoxFit.cover),
                        const Center(
                          child: Text("Forest",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 1,
              child: SizedBox(
                child: Card(
                  color: const Color.fromARGB(255, 0, 41, 75),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Image.asset("images/home8.jpeg", fit: BoxFit.cover),
                        const Center(
                          child: Text("Forest",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: SizedBox(
                child: Card(
                  color: const Color.fromARGB(255, 0, 41, 75),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Image.asset("images/home9.jpeg", fit: BoxFit.cover),
                        const Center(
                          child: Text("Forest",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 4,
              mainAxisCellCount: 1,
              child: SizedBox(
                child: Card(
                  color: const Color.fromARGB(255, 0, 41, 75),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Image.asset("images/home10.jpeg", fit: BoxFit.cover),
                        const Center(
                          child: Text("Forest",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600)),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
