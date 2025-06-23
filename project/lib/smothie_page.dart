import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/detailCard.dart';
import 'package:project/donut_page.dart';
import 'package:project/my_card.dart';
import 'package:project/start.dart';

class SmothiePage extends StatefulWidget {
  const SmothiePage({super.key});

  @override
  State<SmothiePage> createState() => _SmothiePageState();
}

class _SmothiePageState extends State<SmothiePage> {
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
                    color: Color(0xffc1dcff),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Smothie',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.bold,
                          // fontWeight:
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 16)),
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
                                builder: (context) => DonutPage()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Donut',
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
                    ))
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 17)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyCard(productName: "Blueberry Strawberry", price: "\$12.75", detail: "A smoothie commonly has a liquid base,such as fruit juice or milk, yogurt or ice cream. ", img: "assets/images/Frame 5.png", delivery: "delievery not included", cart: "Add to Cart", bgColor: Color(0xffCAE1FF), priceBgColor: Color(0xffA3C9FC), bill: "\$36",priceColor: Color(0xff2884FF)),
                Padding(padding: EdgeInsets.only(left: 16)),
                MyCard(productName: "Strawberry", price: "\$12.75", detail: "A smoothie commonly has a liquid base,such as fruit juice or milk, yogurt or ice cream. ", img: "assets/images/Frame 6.png", delivery: "delievery not included", cart: "Add to Cart", bgColor: Color(0xffFFD6D6),priceBgColor: Color(0xffFFC4C4), bill: "\$45",priceColor: Color(0xffFA8585)),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 16)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyCard(productName: "Island Green", price: "\$12.75", detail: "A smoothie commonly has a liquid base,such as fruit juice or milk, yogurt or ice cream. ", img: "assets/images/Frame 7.png", delivery: "delievery not included", cart: "Add to Cart", bgColor: Color(0xffD1FFD0),priceBgColor: Color(0xffB6FFB5), bill: "\$65",priceColor: Color(0xff72CD70)),
                Padding(padding: EdgeInsets.only(left: 16)),
                MyCard(productName: "Banana", price: "\$12.75", detail: "A smoothie commonly has a liquid base,such as fruit juice or milk, yogurt or ice cream. ", img: "assets/images/Frame 8.png", delivery: "delievery not included", cart: "Add to Cart", bgColor: Color(0xffFEFFBA), priceBgColor: Color(0xffFBFE83), bill: "\$35", priceColor: Color(0xffD3D55B)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
