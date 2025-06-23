import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final Color bgColor;
  final String productName;
  final IconData icon;
  const Detail(
      {required this.bgColor,
      required this.productName,
      required this.icon,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(productName),
        backgroundColor: bgColor,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: Center(
        child: Icon(icon, color: bgColor,),
      ),
    );
  }
}
