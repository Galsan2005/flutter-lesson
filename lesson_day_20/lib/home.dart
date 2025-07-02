import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Map<String, dynamic>> _items = [
    {
      'name': 'Улаанбаатар',
      'description': 'Монгол улсын нийслэл хот',
      'icon': Icons.location_city,
    },
    {
      'name': 'Дархан',
      'description': 'Монголын хоёр дахь том хот',
      'icon': Icons.factory,
    },
    {
      'name': 'Эрдэнэт',
      'description': 'Уул уурхайн том төв',
      'icon': Icons.business,
    },
    {
      'name': 'Чойбалсан',
      'description': 'Дорнод аймгийн төв',
      'icon': Icons.landscape,
    },
    {
      'name': 'Ховд',
      'description': 'Баруун бүсийн төв',
      'icon': Icons.terrain,
    },
    {
      'name': 'Мөрөн',
      'description': 'Хөвсгөл аймгийн төв',
      'icon': Icons.forest,
    },
    {
      'name': 'Сайншанд',
      'description': 'Дорноговь аймгийн төв',
      'icon': Icons.agriculture,
    },
    {
      'name': 'Багануур',
      'description': 'Нүүрсний уурхайн хот',
      'icon': Icons.elevator,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mongolian Cities"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index) {
            final item = _items[index];
            return Card(
              elevation: 2,
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue.shade100,
                  child: Icon(
                    item["icon"],
                    color: Colors.blue.shade800,
                  ),
                ),
                title: Text(
                  item["name"],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(item["description"]),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  _showItemDetails(context, item);
                },
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(onPressed: (){_addItemDialog(context);},child: Icon(Icons.add),),
    );
  }

  void _showItemDetails(BuildContext context, Map<String, dynamic> item) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(item["name"]),
              content: Text(item["description"]),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Close"))
              ],
            ));
  }

  void _addItemDialog(BuildContext context) {
    final TextEditingController nameContoller = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();

    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Add new city"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: nameContoller,
                    decoration: const InputDecoration(labelText: "City Name"),
                  ),
                  TextField(
                    controller: descriptionController,
                    decoration: const InputDecoration(labelText: "Description"),
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    child:
                    Navigator.pop(context);
                  },
                  child: Text("Cancel"),
                ),
                TextButton(
                    onPressed: () {
                      if (nameContoller.text.isNotEmpty) {
                        setState(() {
                          _items.add({
                            "name": nameContoller.text,
                            "description": descriptionController.text,
                            "icon": Icons.location_on
                          });
                        });
                      }
                      Navigator.pop(context);
                    },
                    child: Text("Add"))
              ],
            ));
  }
}
