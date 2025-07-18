import 'package:flutter/material.dart';
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

  PetProfile({
    required this.name,
    required this.origin,
    required this.age,
    required this.img,
    required this.type,
  });
}

class _HomePageState extends State<HomePage> {

  String selectedFilter = "all";

  List<PetProfile> allPets = [
    PetProfile(name: "Harry",
        origin: "Yorkshire Terrier",
        age: "3 years",
        img: "assets/images/66b6e2c0f0dadb6c1b67d078f61b9dcb20cf7f76.png",
        type: "dog"),
    PetProfile(name: "Mark",
        origin: "British",
        age: "2 month",
        img: "assets/images/d05ec49e4d0c491f54117739c2c3c68d9e4dc046.png",
        type: "cat"),
    PetProfile(name: "Henry",
        origin: "Mestizo",
        age: "3 years",
        img: "assets/images/76a9645d0721c39bf82461798397faec5b87c0d2.png",
        type: "cat"),
    PetProfile(name: "Lopy",
        origin: "Yorkshire Terrier",
        age: "3 years",
        img: "assets/images/f69ff454a650f7fcd5ecc4dcb92baf1e25a9ce54.png",
        type: "dog"),
    PetProfile(name: "Jennie",
        origin: "Yorkshire Terrier",
        age: "3 years",
        img: "assets/images/4d2e40727f9cc48bfa1763ff435aef117482bde1.png",
        type: "dog"),
    PetProfile(name: "Cris",
        origin: "Mestizo",
        age: "3 years",
        img: "assets/images/7e50dce166fdf4f4c1b2326a232130d88c3fae73.png",
        type: "dog"),

  ];

  List<PetProfile> get filteredPets {
    if(selectedFilter == "all") return allPets;
    return allPets.where((pet) => pet.type == selectedFilter).toList();
  }


  @override
  // Widget build(BuildContext context) {
  //   return SafeArea(
  //     child: Scaffold(
  //       backgroundColor: Colors.white,
  //       appBar: AppBar(
  //         backgroundColor: Colors.white,
  //         leading: Padding(
  //           padding: const EdgeInsets.only(left: 20.0, top: 20),
  //           child: Text(
  //             "9:41",
  //             style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
  //           ),
  //         ),
  //         leadingWidth: 100,
  //         actions: [
  //           Padding(
  //             padding: const EdgeInsets.only(right: 40),
  //             child: Row(
  //               children: [
  //                 Icon(Icons.network_cell),
  //                 SizedBox(width: 10),
  //                 Icon(Icons.wifi),
  //                 SizedBox(width: 10),
  //                 Icon(Icons.battery_full),
  //               ],
  //             ),
  //           ),
  //         ],
  //       ),
  //       body: Padding(
  //         padding: EdgeInsets.only(right: 20, left: 20),
  //         child: Column(
  //           // mainAxisAlignment: MainAxisAlignment.center,
  //           children: [
  //             Container(
  //               child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 children: [
  //                   Text(
  //                     "takee",
  //                     style: TextStyle(
  //                       fontWeight: FontWeight.w800,
  //                       fontSize: 20,
  //                     ),
  //                   ),
  //                   Container(
  //                     width: 70,
  //                     height: 60,
  //                     child: Image.asset(
  //                       "assets/images/379a31e5c285648951a5e7d09b0d3825be29ebfd.png",
  //                       fit: BoxFit.fill,
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //             Container(child: _buildCategory()),
  //             Container(child: _buildMainDisplay(context)),
  //             Container(child: _buildFooter()),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
  //
  // Widget _buildCategory() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       FilterButton("all", "Бүгд"),
  //       FilterButton("dog", "Нохой"),
  //       FilterButton("cat", "Муур"),
  //       // ElevatedButton(
  //       //   // style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
  //       //
  //       //   onPressed: () {},
  //       //   child: Container(
  //       //     width: 100,
  //       //     height: 50,
  //       //     decoration: BoxDecoration(
  //       //       borderRadius: BorderRadius.circular(100),
  //       //       color: Color(0xffFBD1C4),
  //       //     ),
  //       //     child: Row(
  //       //       children: [
  //       //         Padding(
  //       //           padding: const EdgeInsets.only(left: 10),
  //       //           child: Container(
  //       //             width: 32,
  //       //             height: 32,
  //       //             decoration: BoxDecoration(
  //       //               shape: BoxShape.circle,
  //       //               image: DecorationImage(
  //       //                 image: AssetImage(
  //       //                   "assets/images/6edb41af2f4c9e50e6a6ad654b396e751c50090d.png",
  //       //                 ),
  //       //                 fit: BoxFit.cover,
  //       //               ),
  //       //             ),
  //       //           ),
  //       //         ),
  //       //         SizedBox(width: 10),
  //       //         Text(
  //       //           "All",
  //       //           style: TextStyle(
  //       //             fontSize: 16,
  //       //             fontWeight: FontWeight.w600,
  //       //             color: Colors.white,
  //       //           ),
  //       //         ),
  //       //       ],
  //       //     ),
  //       //   ),
  //       // ),
  //       // SizedBox(width: 30),
  //       // ElevatedButton(
  //       //   style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
  //       //   onPressed: () {},
  //       //   child: Container(
  //       //     width: 110,
  //       //     height: 50,
  //       //     decoration: BoxDecoration(
  //       //       borderRadius: BorderRadius.circular(100),
  //       //       color: Colors.white,
  //       //       border: Border.all(color: Color(0xffCCE1F4)),
  //       //     ),
  //       //     child: Row(
  //       //       children: [
  //       //         Padding(
  //       //           padding: const EdgeInsets.only(left: 10),
  //       //           child: Container(
  //       //             width: 32,
  //       //             height: 32,
  //       //             decoration: BoxDecoration(
  //       //               shape: BoxShape.circle,
  //       //               image: DecorationImage(
  //       //                 image: AssetImage(
  //       //                   "assets/images/590d0d2373057ae133fd81a73022b7fc51d6ffe4.png",
  //       //                 ),
  //       //                 fit: BoxFit.cover,
  //       //               ),
  //       //             ),
  //       //           ),
  //       //         ),
  //       //         SizedBox(width: 10),
  //       //         Text(
  //       //           "Cats",
  //       //           style: TextStyle(
  //       //             fontSize: 16,
  //       //             fontWeight: FontWeight.w600,
  //       //             color: Colors.grey,
  //       //           ),
  //       //         ),
  //       //       ],
  //       //     ),
  //       //   ),
  //       // ),
  //       // SizedBox(width: 30),
  //       // ElevatedButton(
  //       //   style: ElevatedButton.styleFrom(padding: EdgeInsets.zero),
  //       //   onPressed: () {},
  //       //   child: Container(
  //       //     width: 110,
  //       //     height: 50,
  //       //     decoration: BoxDecoration(
  //       //       borderRadius: BorderRadius.circular(100),
  //       //       color: Colors.white,
  //       //       border: Border.all(color: Color(0xffCCE1F4)),
  //       //     ),
  //       //     child: Row(
  //       //       children: [
  //       //         Padding(
  //       //           padding: const EdgeInsets.only(left: 10),
  //       //           child: Container(
  //       //             width: 32,
  //       //             height: 32,
  //       //             decoration: BoxDecoration(
  //       //               shape: BoxShape.circle,
  //       //               image: DecorationImage(
  //       //                 image: AssetImage(
  //       //                   "assets/images/da6153a5f504d32b6652db07ecf1d0f90fb6c020.png",
  //       //                 ),
  //       //                 fit: BoxFit.cover,
  //       //               ),
  //       //             ),
  //       //           ),
  //       //         ),
  //       //         SizedBox(width: 10),
  //       //         Text(
  //       //           "Dogs",
  //       //           style: TextStyle(
  //       //             fontSize: 16,
  //       //             fontWeight: FontWeight.w600,
  //       //             color: Colors.grey,
  //       //           ),
  //       //         ),
  //       //       ],
  //       //     ),
  //       //   ),
  //       // ),
  //       SizedBox(height: 10),
  //       Expanded(
  //         child: ListView.builder(
  //           itemCount: filteredPets.length,
  //           itemBuilder: (context, index) {
  //             final pet = filteredPets[index];
  //             return Card(
  //               child: ListTile(
  //                 leading: CircleAvatar(
  //                   backgroundImage: AssetImage(pet.img),
  //                 ),
  //                 title: Text(pet.name),
  //                 subtitle: Text(pet.type == "dog" ? "Нохой" : "Муур"),
  //               ),
  //             );
  //           },
  //         ),
  //       ),
  //     ],
  //   );
  // }
  //
  // Widget _buildMainDisplay(BuildContext context) {
  //   return Column(
  //     children: [
  //       Row(children: [ProfileCard(), ProfileCard()]),
  //       Row(children: [ProfileCard(), ProfileCard()]),
  //       Row(children: [ProfileCard(), ProfileCard()]),
  //     ],
  //   );
  // }
  //
  // Widget _buildFooter() {
  //   return Column();
  // }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Тэжээвэр амьтад')),
      body: Column(
        children: [
          // Filter Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilterButton("all", "Бүгд"),
              FilterButton("dog", "Нохой"),
              FilterButton("cat", "Муур"),
            ],
          ),
          SizedBox(height: 10),

          // Cards List
          Expanded(
            child: ListView.builder(
              itemCount: filteredPets.length,
              itemBuilder: (context, index) {
                final pet = filteredPets[index];
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(pet.img),
                    ),
                    title: Text(pet.name),
                    subtitle: Text(pet.type == "dog" ? "Нохой" : "Муур"),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }


  Widget FilterButton(String filter, String label) {
    final isSelected = selectedFilter == filter;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child:   ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Colors.blue : Colors.grey[300],
          foregroundColor: isSelected ? Colors.white : Colors.black,
        ),
        onPressed: () {setState(() {
          selectedFilter = filter;
        });},
        child: Text(label),
      ),

    );
  }
}
