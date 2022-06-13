import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final count = useState(0);

    return Scaffold(
      appBar: AppBar(
        title: Text("hooks"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black87,
        elevation: 1,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("hello hooks count: ${count.value.toString()}"),
          ),
          FloatingActionButton(
            onPressed: () {
              count.value++;
            },
            tooltip: "increment",
            child: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
