import 'package:flutter/material.dart';
import 'package:project_3/home_page.dart';
import 'package:project_3/profile_card.dart';

class LikedPage extends StatefulWidget {
  final List<PetProfile> allPets;
  const LikedPage({
    required this.allPets, super.key});

  @override
  State<LikedPage> createState() => _LikedPageState();
}

class _LikedPageState extends State<LikedPage> {
  bool showLikedOnly = true;
  List<PetProfile> get LikedPets {
    if (showLikedOnly) {
      return widget.allPets.where((pet) => pet.like).toList();
    }
    return widget.allPets;
  }
  void _liked(PetProfile pet) {
    setState(() {
      pet.like = !pet.like;
      showLikedOnly = true;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: Container(
        child:  Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(16),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // 2 багана
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 8 / 9, // өргөн-өндөр харьцаа
            ),
            itemCount: LikedPets.length,
            itemBuilder: (context, index) {
              final pet = LikedPets[index];
              return RawMaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileCard(
                        name: pet.name,
                        img: pet.img,
                        age: pet.age,
                        scale: pet.scale,
                      ),
                    ),
                  );
                },

                child: Container(
                  width: 180,
                  height: 220,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(9, 15, 37, 0.10),
                        offset: Offset(0, 4),
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 200,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              image: DecorationImage(
                                image: AssetImage(pet.img),
                                fit: BoxFit.cover,
                                alignment: Alignment(0, -0.6),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 8,
                            right: 8,
                            width: 32,
                            height: 32,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: IconButton(
                                onPressed: () {_liked(pet);},
                                icon: Icon(
                                  pet.like ? Icons.star_outlined : Icons.star_border,
                                  color: pet.like ? Colors.yellow : Colors.grey,
                                  size: 18,
                                ),
                              ),
                            ),
                          ),


                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8,
                          left: 10,
                          right: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              pet.name,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              pet.age,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              pet.origin,
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                              textAlign: TextAlign.start,
                            ),
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

        ),
      ),
    );
  }
}
