import 'package:flutter/material.dart';
import 'package:lesson_day_16/detail.dart';


class MyCard extends StatelessWidget {
  final Color bgColor;
  final String productName;
  final IconData icon;
  const MyCard({
    required this.bgColor,
    required this.productName,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Detail(bgColor: bgColor, productName: productName, icon: icon)));
      },
      child: Container(
        width: 200,
        height: 300,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            Text(productName, style: TextStyle(color: Colors.white, fontSize: 20),),
            SizedBox(height: 20,),
            Text("About my project", style: TextStyle(color: Colors.white),),
            Icon(icon, size: 200, color: Colors.white,),
          ],
        ),
      ),
    );
  }
}