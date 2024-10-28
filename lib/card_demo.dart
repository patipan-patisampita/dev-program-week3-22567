import 'package:flutter/material.dart';

class CardDemo extends StatelessWidget {
  const CardDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Card Demo"),
      ),
      body: Center(
        child: Card(
          child: InkWell(
            onTap: () {
              debugPrint("CARD-1");
            },
            child: const SizedBox(
              width: 300,
              height: 100,
              child: Column(
                children: [
                  Icon(Icons.home),
                  Text("CARD-1"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
