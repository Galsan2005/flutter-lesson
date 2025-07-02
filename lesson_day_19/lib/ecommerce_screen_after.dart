import 'package:flutter/material.dart';

class ECommerceScreen extends StatelessWidget {
  const ECommerceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.purple,
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            _buildToggleBar(context),
            Image.asset("assets/images/woman_shopping.jpg"),
            SizedBox(
              height: 15,
            ),
            DealButtons(),
            _buildProductTitle(context),
          ],
        ),
      ),
    );
  }

  Container _buildProductTitle(BuildContext context) {
    return Container(
      height: 200,
      color: Theme.of(context).cardColor,
      child: Row(
        children: <Widget>[
          Image.asset(
            "assets/images/textiles.jpg",
            fit: BoxFit.fitHeight,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Lorem ipsum",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(
                    "Dolor is amet, sonsecterutr adipiscin eit. Wuiaswur faucobus.")
              ],
            ),
          ))
        ],
      ),
    );
  }

  Widget _buildToggleBar(BuildContext context) {
    return Row(
      children: <Widget>[
        _buildToggleItem(context, "Recommended", selected: true),
        _buildToggleItem(context, "Formal Wear"),
        _buildToggleItem(context, "Casual Wear"),
      ],
    );
  }

  Padding _buildToggleItem(BuildContext context, String text, {bool selected = false}) {
    return Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          text,
          style: TextStyle(
            color: selected ? null : Theme.of(context).textTheme.titleMedium?.color?.withOpacity(0.5),
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
  }

  AppBar _buildAppBar() {
    return AppBar(
      // backgroundColor: Colors.purpleAccent,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
      leading: Padding(
        padding: const EdgeInsets.all(20),
        child: Icon(Icons.home),
      ),
      title: Text("Let\'s go shopping"),

      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(020),
          child: Icon(Icons.shopping_cart),
        )
      ],
    );
  }
}

class DealButtons extends StatelessWidget {
  const DealButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: <Widget>[
            DealButton(text: "Best Sellers", color: Colors.orangeAccent),
            SizedBox(
              width: 10,
            ),
            DealButton(text: "Daily Deals", color: Colors.indigoAccent),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: <Widget>[
            DealButton(text: "Must buy in summer", color: Colors.lightGreen),
            SizedBox(
              width: 10,
            ),
            DealButton(text: "Last Chance", color: Colors.redAccent),
          ],
        ),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}

class DealButton extends StatelessWidget {
  final String text;
  final Color color;
  const DealButton({super.key, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      height: 80,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(20)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    ));
  }
}
