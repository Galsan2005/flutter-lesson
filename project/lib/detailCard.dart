import 'package:flutter/material.dart';

class Detailcard extends StatelessWidget {
  final String productName;
  final String img;
  final String detail;
  final String price;
  final String cart;
  final String delivery;
  const Detailcard(
      {required this.productName,
      required this.price,
      required this.detail,
      required this.img,
      required this.cart,
      required this.delivery,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: double.infinity,
          height: 773,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0xfffff3f3),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios_new),
                  ),
                  Text(
                    productName,
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Nunito",
                        fontWeight: FontWeight.w800,
                        color: Colors.black),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    child: Image.asset(
                      img,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Container(
                    width: 334,
                    height: 490,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                    ),

                    child: Padding(
                      padding: const EdgeInsets.only(left: 27),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(top: 30, bottom: 30),
                            child: Text(
                              "Ingredients",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Nunito",
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black),
                            ),
                          ),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spac,
                            children: [
                              Container(
                                padding: EdgeInsets.all(8),
                                width: 65,
                                height: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.white,
                                    border: Border.all(color: Color(0xffe4e4e4))),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Text(
                                        "Sugar",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontFamily: "Nunito",
                                            fontSize: 15),
                                      ),
                                    ),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Color(0xffCAE1FF),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "2%",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "Nunito",
                                              fontSize: 20),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                padding: EdgeInsets.all(8),
                                width: 65,
                                height: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.white,
                                    border: Border.all(color: Color(0xffe4e4e4))),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Text(
                                        "Salt",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontFamily: "Nunito",
                                            fontSize: 15),
                                      ),
                                    ),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Color(0xffFFD6D6),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "3%",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "Nunito",
                                              fontSize: 20),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                padding: EdgeInsets.all(8),
                                width: 65,
                                height: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.white,
                                    border: Border.all(color: Color(0xffe4e4e4))),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Text(
                                        "Fat",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontFamily: "Nunito",
                                            fontSize: 15),
                                      ),
                                    ),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Color(0xffD1FFD0),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "12%",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "Nunito",
                                              fontSize: 20),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                padding: EdgeInsets.all(8),
                                width: 65,
                                height: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.white,
                                    border: Border.all(color: Color(0xffe4e4e4))),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 15),
                                      child: Text(
                                        "Energy",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w800,
                                            fontFamily: "Nunito",
                                            fontSize: 14),
                                      ),
                                    ),
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Color(0xffFEFFBA),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "40%",
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontFamily: "Nunito",
                                              fontSize: 20),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30, bottom: 24),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Details",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "Nunito",
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                SizedBox(
                                  width: 271,
                                  child: Text(
                                    detail,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 16,
                                      fontFamily: "Nunito",
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            width: 290,
                            height: 92,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Color(0xffe4e4e4))),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    price,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: "Nunito",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Text(
                                    delivery,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: "Nunito",
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    cart,
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: "Nunito",
                                      fontWeight: FontWeight.w900,
                                      decoration: TextDecoration.underline
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      // backgroundColor: Color(0xffFFF3F3),
      // body: Column(
      //   children: [
      //
      //
      //   ],
      // )
    ));
  }
}
