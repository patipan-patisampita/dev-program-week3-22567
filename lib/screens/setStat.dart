import 'package:flutter/material.dart';

class SetStateDemo extends StatefulWidget {
  const SetStateDemo({super.key});

  @override
  State<SetStateDemo> createState() => _SetStateDemoState();
}

class _SetStateDemoState extends State<SetStateDemo> {
  String setSateValue = "DevOps Tech";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Set State"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(setSateValue),
          ),
          const Center(
            child: Text("Prompt Engineering:"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            setSateValue = "Developer productivity";
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
