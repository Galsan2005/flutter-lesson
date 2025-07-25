import 'package:flutter/material.dart';
import 'package:project_3/liked_page.dart';
import 'package:project_3/profile.dart';
import 'package:project_3/profile_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class PetProfile {
  final String name;
  final String origin;
  final String age;
  final String img;
  final String type;
  final String scale;
  bool like;

  PetProfile({
    required this.name,
    required this.origin,
    required this.age,
    required this.img,
    required this.type,
    required this.scale,
    required this.like,
  });
}

class _HomePageState extends State<HomePage> {
  String selectedFilter = "all";
  bool showLikedOnly = false;

  List<PetProfile> allPets = [
    PetProfile(
      name: "Harry",
      origin: "Yorkshire Terrier",
      age: "1 years",
      img: "assets/images/66b6e2c0f0dadb6c1b67d078f61b9dcb20cf7f76.png",
      type: "dog",
      scale: "13",
      like: false,
    ),
    PetProfile(
      name: "Mark",
      origin: "British",
      age: "2 month",
      img: "assets/images/d05ec49e4d0c491f54117739c2c3c68d9e4dc046.png",
      type: "cat",
      scale: "10",
      like: false,
    ),
    PetProfile(
      name: "Henry",
      origin: "Mestizo",
      age: "3 years",
      img: "assets/images/76a9645d0721c39bf82461798397faec5b87c0d2.png",
      type: "cat",
      scale: "14",
      like: false,
    ),
    PetProfile(
      name: "Lopy",
      origin: "Yorkshire Terrier",
      age: "2 years",
      img: "assets/images/f69ff454a650f7fcd5ecc4dcb92baf1e25a9ce54.png",
      type: "dog",
      scale: "24",
      like: false,
    ),
    PetProfile(
      name: "Jennie",
      origin: "Yorkshire Terrier",
      age: "2 years",
      img: "assets/images/4d2e40727f9cc48bfa1763ff435aef117482bde1.png",
      type: "dog",
      scale: "23",
      like: false,
    ),
    PetProfile(
      name: "Cris",
      origin: "Mestizo",
      age: "3 years",
      img: "assets/images/7e50dce166fdf4f4c1b2326a232130d88c3fae73.png",
      type: "dog",
      scale: "15",
      like: false,
    ),
  ];

  List<PetProfile> get filteredPets {
    if (selectedFilter == "all") return allPets;
    return allPets.where((pet) => pet.type == selectedFilter).toList();
  }

  List<PetProfile> get LikedPets {
    if (showLikedOnly) {
      return allPets.where((pet) => pet.like).toList();
    }
    return allPets;
  }

  // List<PetProfile> get likedPets {
  //   if (selectedFilter == "all") return allPets;
  //   return allPets.where((pet) => pet.type == selectedFilter).toList();
  // }

  void _liked(PetProfile pet) {
    setState(() {
      pet.like = !pet.like;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 10),
          child: Text(
            "takee",
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
          ),
        ),
        leadingWidth: 100,
        actions: [
          Container(
            width: 70,
            height: 60,
            child: Image.asset(
              "assets/images/379a31e5c285648951a5e7d09b0d3825be29ebfd.png",
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Filter Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilterButton(
                "all",
                "All",
                "assets/images/6edb41af2f4c9e50e6a6ad654b396e751c50090d.png",
              ),
              FilterButton(
                "dog",
                "Dogs",
                "assets/images/da6153a5f504d32b6652db07ecf1d0f90fb6c020.png",
              ),
              FilterButton(
                "cat",
                "Cats",
                "assets/images/590d0d2373057ae133fd81a73022b7fc51d6ffe4.png",
              ),
            ],
          ),
          SizedBox(height: 10),

          // Cards List
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // 2 багана
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 8 / 9, // өргөн-өндөр харьцаа
              ),
              itemCount: filteredPets.length,
              itemBuilder: (context, index) {
                final pet = filteredPets[index];
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
          _buildFooter(context),
        ],
      ),
    );
  }

  Widget FilterButton(String filter, String label, img) {
    final isSelected = selectedFilter == filter;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          backgroundColor: isSelected ? Color(0xffFBD1C4) : Colors.white,
          foregroundColor: isSelected ? Colors.white : Colors.grey,
          // 👉 TEXT COLOR
          side: BorderSide(
            color: isSelected ? Color(0xffFBD1C4) : Color(0xffCCE1F4),
            // 👉 BORDER COLOR
            width: 1, // 👉 BORDER WIDTH
          ),
        ),
        onPressed: () {
          setState(() {
            selectedFilter = filter;
          });
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            width: 100,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              // color: Color(0xffFBD1C4),
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(img),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  label,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
      ),

      // child: Text(label),
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70, top: 20, right: 70, bottom: 20),
      child: Container(
        width: 375,
        height: 65,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              icon: Icon(Icons.home_outlined, size: 35),
            ),
            IconButton(
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => LikedPage(allPets: allPets)));},
              icon: Icon(Icons.star_border, size: 35),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.person_outline, size: 35),
            ),
          ],
        ),
      ),
    );
  }
}
