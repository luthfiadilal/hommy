import 'package:flutter/material.dart';
import 'package:hommy/data/near_houses.dart';

class Nearhouse extends StatelessWidget {
  final List<Naerhouses> nearhouseList;

  const Nearhouse({super.key, required this.nearhouseList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(
            left: 15.0,
            right: 15.0,
            bottom: 5.0,
            top: 12.0,
          ),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Near You",
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
          height: 116,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: nearhouseList.length,
              itemBuilder: (context, index) {
                // ignore: unused_local_variable
                final nearhouse = nearhouseList[index];
                return Padding(
                    padding: const EdgeInsets.only(
                      left: 15.0,
                    ),
                    child: Row(
                      children: <Widget>[
                        Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                                side: const BorderSide(
                                  color: Colors.black26,
                                  width: 1.5,
                                )),
                            child: SizedBox(
                              width: 284,
                              height: 112,
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(6),
                                    child: Card(
                                      child: SizedBox(
                                        width: 94,
                                        height: 94,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(7.5),
                                          child: Image.asset(
                                            nearhouse.image,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                      child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5.0,
                                      bottom: 5.0,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            nearhouse.name,
                                            style: const TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 18,
                                              fontWeight: FontWeight.w700,
                                            ),
                                            maxLines: 2,
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            nearhouse.location,
                                            style: const TextStyle(
                                                fontFamily: 'Poppins',
                                                fontSize: 13,
                                                fontWeight: FontWeight.w500,
                                                color: Color.fromARGB(
                                                    255, 104, 104, 104)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ))
                                ],
                              ),
                            )),
                      ],
                    ));
              }),
        ),
      ],
    );
  }
}
