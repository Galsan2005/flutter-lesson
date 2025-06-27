import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                ElevatedButton(
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
                  onPressed: (){},
                  child: Container(
                    width: 162,
                    height: 272,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.20),
                              offset: Offset(0, 0),
                              blurRadius: 4)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Text(
                            "Melting Cheese",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 3)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 13,
                                height: 13,
                                child: Image.asset("assets/images/Emoji.png"),
                              ),
                              Padding(padding: EdgeInsets.only(left: 7)),
                              Text("44 calories", style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                fontFamily: "Inter",
                                color: Color(0xffeb5757)
                              ),)
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            width: 145,
                            height: 142,
                            child: Image.asset("assets/images/Pizza 4.png"),
                          ),
                          Padding(padding: EdgeInsets.only(top: 10)),

                          Text.rich(
                            TextSpan(
                                text: "\$ ",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffEB5757)),
                                children: [
                                  TextSpan(
                                      text: "9.47",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black)),
                                ]),
                            textAlign: TextAlign.center,
                          ),
                          Padding(padding: EdgeInsets.only(top: 10)),

                          Container(
                            width: 17,
                            height: 16,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Color(0xffFE5150),
                            ),
                            child: Center(
                              child: Icon(Icons.add, color: Colors.white, size: 15,),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
                  onPressed: (){},
                  child: Container(
                    width: 162,
                    height: 272,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.20),
                              offset: Offset(0, 0),
                              blurRadius: 4)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Column(
                        children: [
                          Text(
                            "Pizza Capricciosa",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: 3)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 13,
                                height: 13,
                                child: Image.asset("assets/images/Emoji.png"),
                              ),
                              Padding(padding: EdgeInsets.only(left: 7)),
                              Text("54 calories", style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "Inter",
                                  color: Color(0xffeb5757)
                              ),)
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 10),
                            width: 145,
                            height: 142,
                            child: Image.asset("assets/images/Pizza 3.png"),
                          ),
                          Padding(padding: EdgeInsets.only(top: 10)),

                          Text.rich(
                            TextSpan(
                                text: "\$ ",
                                style: TextStyle(
                                    fontSize: 11,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xffEB5757)),
                                children: [
                                  TextSpan(
                                      text: "12.55",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black)),
                                ]),
                            textAlign: TextAlign.center,
                          ),
                          Padding(padding: EdgeInsets.only(top: 10)),

                          Container(
                            width: 17,
                            height: 16,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Color(0xffFE5150),
                            ),
                            child: Center(
                              child: Icon(Icons.add, color: Colors.white, size: 15,),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
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
