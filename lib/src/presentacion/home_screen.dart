import 'package:flutter/material.dart';
import 'package:my_app/src/presentacion/widgets/custom_icon.dart';

List<Map<String, dynamic>> list = [
  {
    "image": 'assets/1.png',
    "title": "Training plan",
    "color": Colors.pink,
  },
  {
    "image": 'assets/2.png',
    "title": "Meel plan",
    "color": Colors.blue,
  },
  {
    "image": 'assets/4.png',
    "title": "Completo plan",
    "color": Colors.green,
  },
  {
    "image": 'assets/3.png',
    "title": "free plan",
    "color": Colors.black,
  },
  {
    "image": 'assets/5.png',
    "title": "100 plan",
    "color": Colors.orange,
  },
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [CustomIcon()],
        title: const Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Store",
              style: TextStyle(
                  fontSize: 28,
                  color: Color.fromARGB(255, 9, 62, 90),
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: const _CustomBody(),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.dynamic_feed_outlined), label: 'fee'),
            BottomNavigationBarItem(
                icon: Icon(Icons.bar_chart_rounded), label: 'progreso'),
            BottomNavigationBarItem(
                icon: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 30, 1, 36),
                  radius: 25,
                  child: Text(
                    "v",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
                label: '1.15'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket_rounded), label: 'Store'),
            BottomNavigationBarItem(
                icon: Icon(Icons.menu_open), label: 'Compras'),
          ]),
    );
  }
}

class _CustomBody extends StatelessWidget {
  const _CustomBody();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            color: list[index]['color'],
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Image.asset(
                    list[index]['image'],
                    fit: BoxFit.contain,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    list[index]['title'],
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
