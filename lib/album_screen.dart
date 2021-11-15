import 'package:flutter/material.dart';

class AlbumScreen extends StatefulWidget {
  const AlbumScreen({Key? key}) : super(key: key);

  @override
  _AlbumScreenState createState() => _AlbumScreenState();
}

class _AlbumScreenState extends State<AlbumScreen> {
  final List albums = [
    {
      "titre": "Summer Days",
      "annee": "2019",
      "imageUrl": "assets/images/2.jpg"
    },
    {
      "titre": "Song For You",
      "annee": "2019",
      "imageUrl": "assets/images/3.jpg"
    },
    {
      "titre": "Last Dance",
      "annee": "2019",
      "imageUrl": "assets/images/4.jpg",
    },
    {
      "titre": "Song For You",
      "annee": "2019",
      "imageUrl": "assets/images/5.jpg"
    },
    {
      "titre": "Song For You",
      "annee": "2019",
      "imageUrl": "assets/images/6.jpg"
    },
    {
      "titre": "Song For You",
      "annee": "2019",
      "imageUrl": "assets/images/1.jpg"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          firstBloc(),
          secondBloc(),
        ],
      ),
    );
  }

  Expanded firstBloc() {
    return Expanded(
        flex: 2,
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/1.jpg"), fit: BoxFit.cover),
          ),
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 25.0, vertical: 60.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          icon: const Icon(
                            Icons.keyboard_arrow_left,
                            color: Colors.white,
                            size: 30,
                          )),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      ),
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 20,
                bottom: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "ARTIST",
                      style: TextStyle(color: Colors.grey, fontSize: 18.0),
                    ),
                    Text(
                      "Rhye",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Expanded secondBloc() {
    return Expanded(
        flex: 3,
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25.0),
              )),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: -20,
                right: 30,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(20)),
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    color: Colors.black,
                    icon: const Icon(
                      Icons.play_arrow,
                      size: 36.0,
                    ),
                    onPressed: () => {},
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 42.0,
                      right: 42.0,
                      top: 30.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const [
                            Text(
                              "Songs",
                              style: TextStyle(
                                  color: Colors.white54, fontSize: 18.0),
                            ),
                            Text(
                              "112",
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              "Followers",
                              style: TextStyle(
                                  color: Colors.white54, fontSize: 18.0),
                            ),
                            Text(
                              "60M",
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              "Folloring",
                              style: TextStyle(
                                  color: Colors.white54, fontSize: 18.0),
                            ),
                            Text(
                              "1563",
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, top: 15),
                    child: Text(
                      "Popular",
                      style: TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: albums.map((album) {
                        return Container(
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    height: 140,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 100,
                                          width: 100,
                                          color: Colors.blue,
                                          child: Image.asset(
                                            album["imageUrl"],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                      bottom: -15,
                                      right: 20,
                                      child: Container(
                                        width: 30,
                                        height: 30,
                                        decoration: BoxDecoration(
                                          color: Colors.grey,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        child: IconButton(
                                          padding: EdgeInsets.zero,
                                          color: Colors.white,
                                          icon: const Icon(
                                            Icons.play_arrow,
                                            size: 30.0,
                                          ),
                                          onPressed: () => {},
                                        ),
                                      )),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: Text(
                                  album['titre'],
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300),
                                ),
                              )
                            ],
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0, bottom: 10),
                    child: Text(
                      "Albums",
                      style: TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 20.0),
                    child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: const Image(
                                image: AssetImage("assets/images/1.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Spirit Remind",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
                                ),
                              ),
                              Text(
                                "2019",
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                            color: Colors.white,
                            iconSize: 20,
                            icon: const Icon(
                              Icons.menu,
                              color: Colors.yellow,
                              size: 20.0,
                            ),
                            onPressed: () => {},
                          )
                        ]),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
