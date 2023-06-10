import 'package:belajar_slicing_dua/profile.dart';
import 'package:belajar_slicing_dua/tiket.dart';
import 'package:flutter/material.dart';

import 'film.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  
 final List<Film> films = [
    Film(
        id: 'f1',
        poster: 'image1.png',
        judul: 'Alita Battle',
        genre: 'Family, Sci-fi',
        desc: 'Desktipsi film',
        rating: 7.8),
    Film(
        id: 'f2',
        poster: 'image2.png',
        judul: 'Fall For You',
        genre: 'Romance',
        desc: 'Desktipsi film',
        rating: 8.8),
    Film(
        id: 'f3',
        poster: 'image2.png',
        judul: 'Toy Story',
        genre: 'Family, Kids',
        desc: 'Desktipsi film',
        rating: 8.0),
    Film(
        id: 'f4',
        poster: 'image4.png',
        judul: 'The Lorax',
        genre: 'Family',
        desc: 'Desktipsi film',
        rating: 0.0)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: 675,
              padding: const EdgeInsets.only(
                  left: 16, right: 16, bottom: 16, top: 50),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                color: Color(0xff14153D),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          const Text(
                            "Ika Purwanti",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Image.asset(
                                "assets/img/cash.png",
                                height: 25,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "IDR 370.000",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 65,
                        height: 65,
                        child: CircleAvatar(
                          foregroundImage: AssetImage(
                            "assets/img/profile.png",
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Now Playing",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 255,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: films.map((films) {
                        return Container(
                          width: 140,
                          margin: const EdgeInsets.only(right: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                "assets/img/${films.poster}",
                                height: 200,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        films.judul,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        films.genre,
                                        style: const TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/img/star.png",
                                        height: 20,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        films.rating.toString(),
                                        style: const TextStyle(
                                          fontSize: 13,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),

                          // const FillImageCard(
                          //   width: 140,
                          //   color: Colors.transparent,
                          //   heightImage: 190,
                          //   imageProvider: AssetImage('assets/img/image1.png'),
                          // ),
                        );
                      }).toList(),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Coming Soon",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 130,
                    // padding: const EdgeInsets.all(8),
                    padding: const EdgeInsets.only(right: 8),
                    child: ListView(
                      // scrollDirection: Axis.vertical, // defaulnya vertical
                      children: films.map((films) {
                        return Container(
                          height: 95,
                          padding: const EdgeInsets.only(bottom: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                "assets/img/${films.poster}",
                                alignment: Alignment.centerLeft,
                                // width: 100,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    films.judul,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 3,
                                  ),
                                  Text(
                                    films.genre,
                                    style: const TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 120,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/img/star.png",
                                    height: 20,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    films.rating.toString(),
                                    style: const TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
            // perbatasan navigation
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const Dashboard();
                    }));
                  },
                  child: Image.asset(
                    "assets/img/ic_home_active.png",
                    height: 35,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return TiketPage();
                    }));
                  },
                  child: Image.asset(
                    "assets/img/ic_tiket.png",
                    height: 35,
                  ),
                ),
                
                TextButton(
                  onPressed: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) {
                    //   return const ProfilePage();
                    // }));
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const ProfilePage();
                    }));
                  },
                  child: Image.asset(
                    "assets/img/ic_profile.png",
                    height: 35,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
