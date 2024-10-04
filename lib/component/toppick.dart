import 'package:flutter/material.dart';
import 'package:hommy/data/houses.dart';

class Toppick extends StatelessWidget {
  final List<Houses> houseList;

  const Toppick({super.key, required this.houseList});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      const Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Top Picks",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600),
              ),
              Text(
                "see all",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    color: Color.fromARGB(255, 27, 121, 199)),
              )
            ]),
      ),
      SizedBox(
        height: 250,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: houseList.length,
          itemBuilder: (context, index) {
            final house = houseList[index];
            return Padding(
              padding: const EdgeInsets.only(
                left: 15.0,
              ),
              child: Row(
                children: <Widget>[
                  Card(
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14)),
                      child: SizedBox(
                        width: 252,
                        height: 242,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(14),
                                  topLeft: Radius.circular(14)),
                              child: Image.asset(
                                house.image,
                                width: 252,
                                height: 160,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  house.name,
                                  style: const TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      "\$${house.price}",
                                      style: const TextStyle(
                                          fontFamily: 'Poppins', fontSize: 14),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    // const FavoriteButton()
                                    const Icon(
                                      Icons.favorite_border,
                                      color: Color.fromARGB(255, 243, 187, 32),
                                    )
                                  ]),
                            )
                          ],
                        ),
                      )),
                ],
              ),
            );
          },
        ),
      )
    ]);
  }
}
