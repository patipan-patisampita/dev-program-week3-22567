import 'package:flutter/material.dart';

class InitStateDemo extends StatefulWidget {
  const InitStateDemo({super.key});

  @override
  State<InitStateDemo> createState() => _InitStateDemoSate();
}

class _InitStateDemoSate extends State<InitStateDemo> {
  String value = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      value = "Cloud-native";
    });
    print("Initial State");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Init State"),
      ),
      body: Column(
        children: [
          Center(
            child: Text(value),
          ),
        ],
      ),
    );
  }
}
