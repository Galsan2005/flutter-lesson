import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 440,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Colors.black.withOpacity(0.5),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  // Container(
                  //   width: 110,
                  //   height: 50,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(28),
                  //     color: Colors.black.withOpacity(0.8),
                  //     border: Border.all(color: Colors.grey, width: 2),
                  //     boxShadow: [
                  //       BoxShadow(
                  //         color: Colors.black,
                  //         offset: Offset(0, -4), // X = 0, Y = -4 (дээш сүүдэр)
                  //         blurRadius: 16,
                  //         spreadRadius: 5,
                  //       ),
                  //     ],
                  //   ),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //     children: [
                  //       Container(
                  //         width: 28,
                  //         height: 45,
                  //         decoration: BoxDecoration(
                  //           // color: Colors.white,
                  //           shape: BoxShape.circle,
                  //           image: DecorationImage(
                  //             image: AssetImage("assets/images/planet.jpg"),
                  //             fit: BoxFit.cover,
                  //             alignment: Alignment(0, 0),
                  //           ),
                  //         ),
                  //       ),
                  //       Text(
                  //         "Mercury",
                  //         style: TextStyle(
                  //           fontWeight: FontWeight.w700,
                  //           fontSize: 12,
                  //           color: Colors.white,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
