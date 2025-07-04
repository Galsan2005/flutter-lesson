import 'package:flutter/material.dart';
import 'package:project_2/my_pizza.dart';

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
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.only(left: 23, top: 20, bottom: 10),
          child: Image.asset(
              "assets/images/5966cc29aacedbeb9ac59554fd75ea68730b6e80.png"),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 23, top: 10),
            child: Container(
              width: 47,
              height: 47,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(47),
                  color: Color(0xffF68989),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.20),
                        offset: Offset(0, 5),
                        blurRadius: 14)
                  ]),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
            ),
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 23, right: 23),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi Alex",
              style: TextStyle(
                  color: Color(0xffEB5757),
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  fontFamily: "Inter"),
            ),
            Text(
              "Find your Delicious Food",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 21,
                  fontFamily: "Inter"),
            ),
            // SizedBox(
            //   height: 28,
            //   width: 10,
            // ),
            Padding(padding: EdgeInsets.only(top: 28)),
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.white,
                            border: Border.all(
                                color: Color.fromRGBO(235, 87, 87, 0.75),
                                width: 3),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.20),
                                  offset: Offset(0, 0),
                                  blurRadius: 7)
                            ]),
                        child: Image.asset(
                          "assets/images/Hamburger.png",
                          width: 25,
                          height: 20,
                        ),
                      ),
                      Text(
                        "Fast Food",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.20),
                                  offset: Offset(0, 0),
                                  blurRadius: 7)
                            ]),
                        child: Image.asset(
                          "assets/images/Pizza.png",
                          width: 25,
                          height: 20,
                        ),
                      ),
                      Text(
                        "Italian",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.20),
                                  offset: Offset(0, 0),
                                  blurRadius: 7)
                            ]),
                        child: Image.asset(
                          "assets/images/Sushi.png",
                          width: 25,
                          height: 20,
                        ),
                      ),
                      Text(
                        "Japanese",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        width: 44,
                        height: 44,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(3),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.20),
                                  offset: Offset(0, 0),
                                  blurRadius: 7)
                            ]),
                        child: Image.asset(
                          "assets/images/Scorpion.png",
                          width: 25,
                          height: 20,
                        ),
                      ),
                      Text(
                        "Sea Food",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 80)),
            Text(
              "Popular",
              style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Inter",
                  color: Color(0xff4f4f4f)),
            ),
            Padding(padding: EdgeInsets.only(top: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyPizza(pizzaName: "Melting Cheese", calories: "44 calories", image: "assets/images/Pizza 4.png", price: "9.47"),
                MyPizza(pizzaName: "Pizza Capricciosa", calories: "54 calories", image: "assets/images/Pizza 3.png", price: "12.55")
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 40)),
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 25),
                width: 78,
                height: 78,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Color(0xffF68989),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.30),
                      offset: Offset(0, 7),
                      blurRadius: 18,
                    )
                  ]
                ),
                child: Text("Menu", style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w500,
                  fontSize: 19,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
