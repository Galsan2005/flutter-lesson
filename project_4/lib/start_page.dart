import 'package:flutter/material.dart';
import 'package:project_4/home_page.dart';
import 'package:project_4/login_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/back_img.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // SizedBox(height: 40), // space from top
              ElevatedButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));},
                style: ElevatedButton.styleFrom(padding: EdgeInsets.zero, backgroundColor: Colors.white.withOpacity(0.05)),
                child: Container(
                  height: 300,
                  width: 320,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/Ellipse 27.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/images/logo.png",
                      height: 100,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 100,),
              Container(
                child: Image.asset(
                  "assets/images/flutter_logo.png",
                  height: 200,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
