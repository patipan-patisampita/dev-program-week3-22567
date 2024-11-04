import 'package:flutter/material.dart';

class StateFullDemo extends StatefulWidget {
  const StateFullDemo({super.key});

  @override
  State<StateFullDemo> createState() => _StateFullDemoState();
}

class _StateFullDemoState extends State<StateFullDemo> {
  List<String> names = ["Mark", "Elon", "John"];
  int i = 0;
  Color color =  Colors.red;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text("Stateful widget"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.color_lens),
        backgroundColor: color,
        onPressed: () {
          setState(() {
            color = Colors.amber;
          });
        },
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("My name is ${names[i]}"),
            ElevatedButton(
                onPressed: () {
                  if (i < names.length - 1) {
                    setState(() {
                      i++;
                      debugPrint("$i = ${names[i]}");
                    });
                  }
                },
                child: Text("Next")),
            SizedBox(height: 25.0),
            ElevatedButton(
                onPressed: () {
                  if (i != 0) {
                    setState(() {
                      i--;
                      debugPrint("$i = ${names[i]}");
                    });
                  }
                },
                child: Text("Go Back")),
          ],
        ),
      ),
    );
  }
}
