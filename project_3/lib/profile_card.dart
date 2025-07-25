import 'package:flutter/material.dart';

class ProfileCard extends StatefulWidget {
  final String name;
  final String img;
  final String age;
  final String scale;
  const ProfileCard({required this.name, required this.img, required this.age, required this.scale, super.key});

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 34, left: 30 , top: 40),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: 360,
                    height: 360,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      image: DecorationImage(
                        image: AssetImage(
                          widget.img,
                        ),
                        fit: BoxFit.cover,
                        alignment: Alignment(0, 0),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 24,
                    left: 24,
                    width: 36,
                    height: 36,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100)
                      ),
                      child: IconButton(
                        onPressed: (){Navigator.pop(context);},
                        icon: Icon(Icons.arrow_back_ios_new,
                          color: Colors.black,
                          size: 20,)

                      ),
                    ),
                  ),
                  Positioned(
                    top: 24,
                    right: 24,
                    child: Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.star_border,
                        color: Colors.grey,
                        size: 28,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 24,
                    left: 24,
                    child: Container(
                      width: 80,
                      height: 48,
                      padding: EdgeInsets.only(top: 8, left: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white.withOpacity(0.2),
                      ),
                      child: Text.rich(
                        TextSpan(
                          text: widget.name,
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                          children: [
                            TextSpan(
                              text: " on a walk",
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 15),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Samoyed Willy",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 60),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 80,
                      height: 33,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Color(0xffBDD2FC),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Text(widget.age),
                      ),
                    ),
                    Container(
                      width: 140,
                      height: 33,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Color(0xffB4FC8E),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Text(
                          "Knowns command",
                          style: TextStyle(color: Color(0xff287002)),
                        ),
                      ),
                    ),
                    Container(
                      width: 55,
                      height: 33,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: Color(0xffFFDE96),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Text(
                          "${widget.scale} kg",
                          style: TextStyle(color: Color(0xff73520A)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 15),
                child: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s. ",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft, // Зүүн талд байрлуулна
                child: Text("Updated 9th of December"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 37),
                child: Container(
                  width: 360,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Color(0xfff2968f),
                  ),
                  child: Center(
                    child: Text(
                      "Buy now",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
