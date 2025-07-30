import 'package:flutter/material.dart';

class PlanetDetailPage extends StatefulWidget {
  const PlanetDetailPage({super.key});

  @override
  State<PlanetDetailPage> createState() => _PlanetDetailPageState();
}

class _PlanetDetailPageState extends State<PlanetDetailPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [

            // Background
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Stack(
                children: [
                  // Background image
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/image 10.png',
                      fit: BoxFit.cover,
                    ),
                  ),

                  // Gradient overlay
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          transform: GradientRotation(224 * 3.1416 / 180),
                          colors: [
                            // opacity нэмнэ
                            Color(0xFF72A5F2).withOpacity(0.2),
                            Color(0xFFE961FF).withOpacity(0.2),
                            Color(0xFF00E5E5).withOpacity(0.2),
                          ],
                          stops: [0.0872, 0.5087, 0.913],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Main content
            SafeArea(
              child:
                  Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Top Bar
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 30,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(0.1),
                              ),
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(0.1),
                              ),
                              padding: EdgeInsets.all(10),
                              child: Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 170,
                      ),

                      // Planet Name
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(21),
                          width: double.infinity,
                          // height: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28),
                            color: Colors.black.withOpacity(0.5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 80),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Earth',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),

                                // Stats
                                _buildStats(),

                                // Visit Button
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 20.0),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 40,
                                        vertical: 14,
                                      ),
                                      shape: StadiumBorder(),
                                      backgroundColor: Colors.blueAccent,
                                      foregroundColor: Colors.white,
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'Visit',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
            ),
            Positioned(
              top: 200,
              // left: 100,
              left: (MediaQuery.of(context).size.width - 200) / 2,
              child: Container(
                width: 200,
                height: 150,
                decoration: BoxDecoration(
                  // color: Colors.white,
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/images/planet.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment(0, 0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStats() {
    return Container(
      height: 270,
      child:  Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildStatItem(Icons.fitness_center, 'Mass\n(10²⁴kg)', '5.97'),
                _buildStatItem(Icons.attach_file, 'Gravity\n(m/s²)', '9.8'),
                _buildStatItem(Icons.wb_sunny, 'Day\n(hours)', '24'),
              ],
            ),
            SizedBox(height: 32,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildStatItem(
                  Icons.rocket_launch,
                  'Esc. Velocity\n(km/s)',
                  '11.2',
                ),
                _buildStatItem(Icons.thermostat, 'Mean Temp\n(C)', '15'),
                _buildStatItem(Icons.straighten, 'Distance\nfrom Sun', '5.97'),
              ],
            ),
          ],
        ),
    );
  }

  Widget _buildStatItem(IconData icon, String label, String value) {
    return Column(
      children: [
        Icon(icon, color: Colors.white),
        SizedBox(height: 6),
        Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white70, fontSize: 12),
        ),
        SizedBox(height: 4),
        Text(
          value,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
