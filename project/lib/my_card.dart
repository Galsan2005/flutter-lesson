import 'package:flutter/material.dart';
import 'package:project/detailCard.dart';

class MyCard extends StatelessWidget {
  final String productName;
  final String img;
  final String detail;
  final String price;
  final String cart;
  final String delivery;
  final Color bgColor;
  final String bill;
  final Color priceBgColor;
  final Color priceColor;
  const MyCard(
      {required this.productName,
      required this.price,
      required this.detail,
      required this.img,
      required this.cart,
      required this.delivery,
        required this.bgColor,
        required this.bill,
        required this.priceBgColor,
        required this.priceColor,
      super.key});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => Detailcard(productName: productName, price: price, detail: detail, img: img, cart: cart, delivery: delivery)));
      },
      child: Container(
          width: 160,
          height: 231,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: bgColor,
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
                        color: priceBgColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 0),
                            child: Text(
                              bill,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "Nunito",
                                  color: priceColor),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
              Padding(padding: EdgeInsets.only(top: 6)),
              Container(
                child: Image.asset(img),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Text(
                productName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1,
                  fontFamily: "Nunito",
                  fontSize: 18,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding:
                EdgeInsets.only(left: 15, right: 15, top: 10),
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
    );
  }
}
