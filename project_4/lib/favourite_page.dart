import 'package:flutter/material.dart';
import 'package:project_4/home_page.dart';
import 'package:project_4/planet_detail_page.dart';

class FavouritePage extends StatefulWidget {
  final List<PlanetProfile> allPlanets;
  const FavouritePage({required this.allPlanets, super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  bool showLikedOnly = true;
  List<PlanetProfile> get LikedPlanets {
    if (showLikedOnly) {
      return widget.allPlanets.where((planet) => planet.like).toList();
    }
    return widget.allPlanets;
  }

  void _liked(PlanetProfile planet) {
    setState(() {
      planet.like = !planet.like;
      showLikedOnly = true;
    });
  }

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
            children: [
              Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Color(0xff091522).withOpacity(0.5),
                  border: Border.all(width: 2, color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black.withOpacity(0.5),
                        border: Border.all(width: 2, color: Colors.white),
                      ),
                      child: Icon(Icons.menu, color: Colors.white),
                    ),
                    Text(
                      "Favourites",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.black.withOpacity(0.5),
                        border: Border.all(width: 2, color: Colors.white),
                      ),
                      child: Icon(Icons.person_outline, color: Colors.white),
                    ),
                  ],
                ),
              ),
              // Expanded(child: ListView())
              Expanded(
                child: ListView.builder(
                  itemCount: LikedPlanets.length,
                  itemBuilder: (context, index) {
                    final planet = LikedPlanets[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 24, left: 24, top: 30),
                      child: Container(
                        padding: EdgeInsets.all(24),
                        width: double.infinity,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          color: Color(0xff091522).withOpacity(0.5),
                          border: Border.all(width: 1, color: Colors.black),
                        ),
                        child: Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 170,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    // color: Colors.white,
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image: AssetImage(
                                        planet.img,
                                      ),
                                      fit: BoxFit.cover,
                                      alignment: Alignment(0, 0),
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                        planet.name,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 16,
                                          color: Color(0xff11DCE8),
                                        ),
                                      ),
                                        IconButton(onPressed: (){
                                          _liked(planet);
                                        },
                                          icon: Icon(planet.like ? Icons.favorite : Icons.favorite_border,
                                              color: planet.like ? Colors.yellow : Colors.white),)
                                      ],
                                    ),
                                    Container(
                                      width: 210,
                                      child: Text(
                                        planet.detail,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                    TextButton(
                                      onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => PlanetDetailPage(planet: planet, allPlanets: widget.allPlanets, name: planet.name, img: planet.img)));
                                      },
                                      child: Row(
                                        children: [
                                          SizedBox(width: 150),
                                          Text(
                                            "Details",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Icon(
                                            Icons.arrow_forward_outlined,
                                            color: Color(0xff11DCE8),
                                            size: 18,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              _builtFooter()
            ],
          ),
        ),
      ),
    );
  }

  Widget _builtFooter(){
    return  Container(
      padding: EdgeInsets.only(right: 70, left: 70),
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: Color(0xff091522).withOpacity(0.5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.blur_circular,
                  color: Color(0xff8D8E99),
                  size: 35,
                ),
              ),
              Text(
                "Home",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),

          Column(
            children: [
              IconButton(
                onPressed: () {

                },
                icon: Icon(
                  Icons.favorite_border,
                  color: Color(0xff11DCE8),
                  size: 35,
                ),
              ),
              Text(
                "Favourites",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff8D8E99),
                ),
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_horiz_rounded,
                  color: Color(0xff8D8E99),
                  size: 35,
                ),
              ),
              Text(
                "More",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff8D8E99),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
