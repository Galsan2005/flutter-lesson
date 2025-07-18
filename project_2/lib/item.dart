import 'package:flutter/material.dart';

class ItemPage extends StatefulWidget {
  final String pizzaName;
  final String calories;
  final String image;
  final List<double> prices;

  const ItemPage(
      {required this.pizzaName,
      required this.calories,
      required this.image,

        required this.prices,
      super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  int count = 1;
  double cost = 0;
  double rounded = 0;
  int selectedIndex = 1;
  double abs = 0;
  double a = 0;
  // final List<double> prices = [6.44, 9.47, 15.32];
  // final List<double> prices1 = [9.55, 12.55, 18.43];
  final List<String> sizes = ["8 inch", "12 inch", "16 inch"];
  final List<String> measures = ["180", "220", "270"];


  void _counterPlus() {
    setState(() {
      count++;
      // cost = cost * count;
      rounded = double.parse((cost * count).toStringAsFixed(2));
      abs = cost ;
    });
  }

  void _convert(price, measure) {
    setState(() {
      a = double.parse(measure);
      cost = price;
      count = 1;
      rounded = price * count;
      abs = cost;
    });
  }

  @override
  void initState() {
    super.initState();
    cost = widget.prices[1];
    rounded = widget.prices[1];
    abs = cost;
    a = 200;
  }

  void _counterMinus() {
    setState(() {
      if (count > 0) {
        count--;
        rounded = double.parse((cost * count).toStringAsFixed(2));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        leading: Row(
          children: [
            Expanded(
              child: Container(
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.keyboard_arrow_left,
                      size: 42,
                      color: Colors.black,
                    )),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Container(
                width: 33,
                height: 33,
                child: Image.asset(
                  "assets/images/d5faccf6a149ca4d41561fc1233c807dd36dffb9.png",
                  fit: BoxFit.fitWidth,
                )),
          )
        ],
      ),
      body: Container(
        // color: Colors.white,
        padding: EdgeInsets.only(left: 25, right: 25, top: 36),
        child: Center(
          child: Column(
            children: [
              Text(
                widget.pizzaName,
                style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff4F4F4F)),
              ),
              Text.rich(TextSpan(
                  text: "\$",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffEB5757),
                    fontFamily: "Inter",
                  ),
                  children: [
                    TextSpan(
                      text: ' ${abs} ',
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w500,
                        fontSize: 21,
                        color: Color(0xff4F4F4F),
                      ),
                    )
                  ])),
              Padding(
                padding: const EdgeInsets.only(top: 25, bottom: 53),
                child: Container(
                  width: a,
                  height: a,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(388),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.40),
                            offset: Offset(0, 11),
                            blurRadius: 50)
                      ]),
                  child: Image.asset(
                    widget.image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Color(0xffF68989),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(0, 2),
                              blurRadius: 5)
                        ]),
                    child: IconButton(
                      onPressed: _counterMinus,
                      icon: Icon(
                        Icons.remove,
                        color: Colors.white,
                        size: 22,
                      ),
                      padding: EdgeInsets.zero,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Text(
                      "${count}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Inter"),
                    ),
                  ),
                  Container(
                    width: 22,
                    height: 22,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Color(0xffF68989),
                        boxShadow: [
                          BoxShadow(
                              color: Color.fromRGBO(0, 0, 0, 0.25),
                              offset: Offset(0, 2),
                              blurRadius: 5)
                        ]),
                    child: IconButton(
                      onPressed: _counterPlus,
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 22,
                      ),
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text(
                  "\$ ${rounded}",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      fontFamily: "Inter",
                      color: Color(0xff828282)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(widget.prices.length, (index) {
                    final bool isSelected = index == selectedIndex;
                    // int index = selectedIndex;
                    double price = widget.prices[index];
                    String size = sizes[index];
                    String measure = measures[index];

                    // _counterPlus(price);
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                          _convert(price, measure);
                        });
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 23,
                            height: 23,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(23),
                              border: Border.all(
                                color: isSelected
                                    ? Color(0xffF68989)
                                    : Color(0xffBDBDBD),
                              ),
                            ),
                            child: isSelected
                                ? Padding(
                                    padding: const EdgeInsets.all(1.5),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Color(0xffF68989),
                                      ),
                                    ),
                                  )
                                : null,
                          ),
                          SizedBox(height: 6),
                          Text(
                            "\$${widget.prices[index].toStringAsFixed(2)}",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: Color(0xffBDBDBD),
                            ),
                          ),
                          Text(
                            sizes[index],
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 14,
                              fontFamily: "Inter",
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 44, bottom: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.star,
                            color: Colors.orangeAccent,
                            size: 25,
                          ),
                        ),
                        Text(
                          '4.9',
                          style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.local_fire_department,
                            color: Colors.orangeAccent,
                            size: 25,
                          ),
                        ),
                        Text(
                          widget.calories,
                          style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          child: Icon(
                            Icons.timer,
                            color: Colors.orangeAccent,
                            size: 20,
                          ),
                        ),
                        Text(
                          "20 - 30 min",
                          style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                width: 310,
                height: 53,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Color(0xfff68989),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.23),
                          offset: Offset(0, 8),
                          blurRadius: 23)
                    ]),
                child: Text(
                  "ADD TO CART",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    fontFamily: "Inter",
                  ),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
