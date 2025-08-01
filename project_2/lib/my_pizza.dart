import 'package:flutter/material.dart';
import 'package:project_2/item.dart';

class MyPizza extends StatefulWidget {
  final String pizzaName;
  final String calories;
  final String image;
  final List<double> prices;

  const MyPizza(
      {required this.pizzaName,
      required this.calories,
      required this.image,
        required this.prices,
      super.key});

  @override
  State<MyPizza> createState() => _MyPizzaState();
}

class _MyPizzaState extends State<MyPizza> {
  // int count = 0;
  // Pl
  // void _counter(){
  //   setState(() {
  //     count ++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
      onPressed: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ItemPage(
                      pizzaName: widget.pizzaName,
                      calories: widget.calories,
                      image: widget.image,
                      prices: widget.prices,
                    )));
      },
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
                widget.pizzaName,
                style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
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
                  Text(
                    widget.calories,
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Inter",
                        color: Color(0xffeb5757)),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                width: 145,
                height: 142,
                child: Image.asset(widget.image),
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
                          text: '${widget.prices[1]}',
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
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 15,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
