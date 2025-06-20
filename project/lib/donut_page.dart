import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/smothie_page.dart';
import 'package:project/start.dart';

class DonutPage extends StatefulWidget {
  const DonutPage({super.key});

  @override
  State<DonutPage> createState() => _DonutPageState();
}

class _DonutPageState extends State<DonutPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xfffff3f3),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
              padding: EdgeInsets.only(left: 14),
              child: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => StartPage()));
                  },
                  icon: Icon(
                    Icons.keyboard_arrow_left_outlined,
                    color: Colors.grey,
                    size: 36,
                  ))),
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 24),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.person,
                      color: Colors.grey[800],
                      size: 36,
                    ))),
          ],
        ),
        body: Column(
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.only(left: 36)),
                Text(
                  "I want to eat",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 17)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 160,
                  height: 53,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SmothiePage()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Smothie',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontFamily: 'Nunito',
                              fontWeight: FontWeight.bold,
                              // fontWeight:
                            ),
                          ),
                        ],
                      ),
                    )
                ),
                Padding(padding: EdgeInsets.only(left: 16)),
                Container(
                  width: 160,
                  height: 53,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffFFCCCC),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Donut',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold,
                          // fontWeight:
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 17)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 160,
                    height: 231,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffcae1ff),
                    ),
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 58,
                                height: 37,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffa3c9fc),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 0),
                                      child: Text(
                                        "\$36",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "Nunito",
                                            color: Color(0xff2884ff)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                        Padding(padding: EdgeInsets.only(top: 0)),
                        Container(
                          child: Image.asset("assets/images/donut (7).png"),
                        ),
                        Padding(padding: EdgeInsets.only(top: 0)),
                        Text(
                          "Ice Cream Dunkings",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15, top: 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child:
                                Image.asset("assets/images/Frame 10.png"),
                                width: 18,
                                height: 18,
                              ),
                              Icon(Icons.add)
                            ],
                          ),
                        ),
                      ],
                    )),
                Padding(padding: EdgeInsets.only(left: 16)),
                Container(
                    width: 160,
                    height: 231,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffFFD6D6),
                    ),
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 58,
                                height: 37,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffFFC4C4),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 0),
                                      child: Text(
                                        "\$45",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "Nunito",
                                            color: Color(0xffFA8585)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                        Padding(padding: EdgeInsets.only(top: 6)),
                        Container(
                          child: Image.asset("assets/images/Frame 2.png"),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Text(
                          "Strawberry ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child:
                                Image.asset("assets/images/Frame 10.png"),
                                width: 18,
                                height: 18,
                              ),
                              Icon(Icons.add)
                            ],
                          ),
                        ),
                      ],
                    ))
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 16)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    width: 160,
                    height: 231,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffD1FFD0),
                    ),
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 58,
                                height: 37,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffB6FFB5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 0),
                                      child: Text(
                                        "\$55",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "Nunito",
                                            color: Color(0xff72CD70)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                        Padding(padding: EdgeInsets.only(top: 6)),
                        Container(
                          child: Image.asset("assets/images/Frame 3.png"),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Text(
                          "Choco Mint",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child:
                                Image.asset("assets/images/Frame 10.png"),
                                width: 18,
                                height: 18,
                              ),
                              Icon(Icons.add)
                            ],
                          ),
                        ),
                      ],
                    )),
                Padding(padding: EdgeInsets.only(left: 16)),
                Container(
                    width: 160,
                    height: 231,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffFEFFBA),
                    ),
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 58,
                                height: 37,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Color(0xffFBFE83),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(right: 0),
                                      child: Text(
                                        "\$65",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            fontFamily: "Nunito",
                                            color: Color(0xffD3D55B)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                        Padding(padding: EdgeInsets.only(top: 6)),
                        Container(
                          child: Image.asset("assets/images/Frame 4.png"),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        Text(
                          "Banana",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child:
                                Image.asset("assets/images/Frame 10.png"),
                                width: 18,
                                height: 18,
                              ),
                              Icon(Icons.add)
                            ],
                          ),
                        ),
                      ],
                    ))
              ],
            )

          ],
        ),
      ),
    );
  }
}
