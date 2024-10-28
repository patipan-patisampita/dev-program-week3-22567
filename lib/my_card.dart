import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("My Card"),
      ),
      body: Container(
        child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(5, (index) {
            return Card(
              margin: const EdgeInsets.all(12.0),
              child: InkWell(
                onTap: () {
                  debugPrint("MyCard-1");
                },
                child: const Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.home, size: 40, color: Colors.blueAccent),
                      Text("Home", style: TextStyle(fontSize: 15.0, color: Colors.black)),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
