import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class PlanetProfile {
  final String name;
  final String img;
  final String detail;
  bool like;

  PlanetProfile({
    required this.name,
    required this.img,
    required this.detail,
    required this.like,
  });
}

class _HomePageState extends State<HomePage> {

  bool showLikedOnly = false;

  List<PlanetProfile> allPlanets = [
    PlanetProfile(name: "Mercury",
        img: "assets/images/",
        detail: "Mercury is the smallest planet in the Solar System and the closest to the Sun.",
        like: false),
    PlanetProfile(name: "Venus",
        img: "assets/images/",
        detail: "Mercury is the smallest planet in the Solar System and the closest to the Sun.",
        like: false),
    PlanetProfile(name: "Earth",
        img: "assets/images/",
        detail: "Mercury is the smallest planet in the Solar System and the closest to the Sun.",
        like: false),
    PlanetProfile(name: "Mars",
        img: "assets/images/",
        detail: "Mercury is the smallest planet in the Solar System and the closest to the Sun.",
        like: false),
  ];

  List<PlanetProfile> get LikedPlanets {
    if (showLikedOnly) {
      return allPlanets.where((planet) => planet.like).toList();
    }
    return allPlanets;
  }

  void _liked(PlanetProfile planet) {
    setState(() {
      planet.like = !planet.like;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/back_img.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Color(0xff091522).withOpacity(0.5),
                  border: Border.all(width: 2, color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black.withOpacity(0.5),
                        border: Border.all(width: 2, color: Colors.white),
                      ),
                      child: Icon(Icons.menu, color: Colors.white),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Milky Way",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff8D8E99),
                          ),
                        ),
                        Text(
                          "Solar System",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black.withOpacity(0.5),
                        border: Border.all(width: 2, color: Colors.white),
                      ),
                      child: Icon(Icons.person_outline, color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 110,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: Colors.black.withOpacity(0),
                        border: Border.all(color: Colors.grey, width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(9, 21, 34, 0.8),
                            offset: Offset(0, -4), // X = 0, Y = -4 (дээш сүүдэр)
                            blurRadius: 16,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 28,
                            height: 45,
                            decoration: BoxDecoration(
                              // color: Colors.white,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("assets/images/planet (2).jpg"),
                                fit: BoxFit.cover,
                                alignment: Alignment(0, 0),
                              ),
                            ),
                          ),
                          Text(
                            "Mercury",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 110,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: Colors.black.withOpacity(0),
                        border: Border.all(color: Colors.grey, width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(9, 21, 34, 0.8),
                            offset: Offset(0, -4), // X = 0, Y = -4 (дээш сүүдэр)
                            blurRadius: 16,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 28,
                            height: 45,
                            decoration: BoxDecoration(
                              // color: Colors.white,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("assets/images/planet (1).jpg"),
                                fit: BoxFit.cover,
                                alignment: Alignment(0, 0),
                              ),
                            ),
                          ),
                          Text(
                            "Venus",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 110,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: Colors.black.withOpacity(0),
                        border: Border.all(color: Colors.grey, width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(9, 21, 34, 0.8),
                            offset: Offset(0, -4), // X = 0, Y = -4 (дээш сүүдэр)
                            blurRadius: 16,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 28,
                            height: 45,
                            decoration: BoxDecoration(
                              // color: Colors.white,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("assets/images/planet.jpg"),
                                fit: BoxFit.cover,
                                alignment: Alignment(0, 0),
                              ),
                            ),
                          ),
                          Text(
                            "Earth",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 110,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: Colors.black.withOpacity(0.8),
                        border: Border.all(color: Colors.grey, width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(0, -4), // X = 0, Y = -4 (дээш сүүдэр)
                            blurRadius: 16,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 28,
                            height: 45,
                            decoration: BoxDecoration(
                              // color: Colors.white,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage("assets/images/planet.jpg"),
                                fit: BoxFit.cover,
                                alignment: Alignment(0, 0),
                              ),
                            ),
                          ),
                          Text(
                            "Mercury",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // mainAxisAlignment: MainAxisAlignment.spaceAround,

              ),
              Padding(
                padding: const EdgeInsets.only(right: 24, left: 24),
                child: Container(
                  padding: EdgeInsets.all(24),
                  width: double.infinity,
                  height: 230,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Color(0xff091522).withOpacity(0.5),
                    border: Border.all(width: 1, color: Colors.black),
                  ),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Planet of the day",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 12),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 90,
                            height: 50,
                            decoration: BoxDecoration(
                              // color: Colors.white,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: AssetImage(
                                  "assets/images/planet (3).jpg",
                                ),
                                fit: BoxFit.cover,
                                alignment: Alignment(0, 0),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mars",
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                  color: Color(0xff11DCE8),
                                ),
                              ),
                              Container(
                                width: 210,
                                child: Text(
                                  "Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, only being larger than Mercury. In the English language, Mars is named for the Roman god of war.",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 150),
                                  Text(
                                    "Details",
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_outlined,
                                    color: Color(0xff11DCE8),
                                    size: 18,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              // SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(right: 24, left: 24),
                child: Container(
                  padding: EdgeInsets.all(21),
                  width: double.infinity,
                  height: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(28),
                    color: Color(0xff091522).withOpacity(0.5),
                    border: Border.all(width: 1, color: Colors.black),
                  ),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Solar System",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 278,
                        child: Text(
                          "The Solar System[c] is the gravitationally bound system of the Sun and the objects that orbit it. It formed 4.6 billion years ago from the gravitational collapse of a giant interstellar molecular cloud. The vast majority (99.86%) of the system's mass is in the Sun, with most of the remaining mass contained in the planet Jupiter. The four inner system planets—Mercury, Venus, Earth and Mars—are terrestrial planets, being composed primarily of rock and metal. The four giant planets of the outer system are substantially larger and more massive than the terrestrials. ",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 70, left: 70),
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Color(0xff091522).withOpacity(0.5),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          },
                          icon: Icon(
                            Icons.blur_circular,
                            color: Color(0xff11DCE8),
                            size: 35,
                          ),
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),

                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Color(0xff8D8E99),
                            size: 35,
                          ),
                        ),
                        Text(
                          "Favourites",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff8D8E99),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.more_horiz_rounded,
                            color: Color(0xff8D8E99),
                            size: 35,
                          ),
                        ),
                        Text(
                          "More",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff8D8E99),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
