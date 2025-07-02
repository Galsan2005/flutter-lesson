import 'package:flutter/material.dart';

class ColorChanger extends StatefulWidget {
  const ColorChanger({super.key});

  @override
  State<ColorChanger> createState() => _ColorChangerState();
}

class _ColorChangerState extends State<ColorChanger> {
  final List<Color> _colors = [
    Colors.redAccent,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.orangeAccent,
  ];
  Color _currentColor = Colors.white;
  String _colorName = "White";

  void changeColor() {
    setState(() {
      final randomIndex =
          DateTime.now().microsecondsSinceEpoch % _colors.length;
      _currentColor = _colors[randomIndex];
      switch (randomIndex) {
        case 0:
          _colorName = "Red";
          break;
        case 1:
          _colorName = "Pink";
          break;
        case 2:
          _colorName = "Blue";
          break;
        case 3:
          _colorName = "Green";
          break;
        case 4:
          _colorName = "Purple";
          break;
        case 5:
          _colorName = "Orange";
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Change Color"),
      ),
      body: Container(
        color: _currentColor,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Text(
              "Current color: $_colorName",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: _currentColor.computeLuminance() > 0.5
                    ? Colors.black
                    : Colors.white,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  changeColor();
                },
                child: Text("Change color")),
            SizedBox(height: 20,),
            TextButton(onPressed: (){setState(() {
              _currentColor = Colors.white;
            });}, child: Text("Reset"))
          ],
        ),
      ),
    );
  }
}
