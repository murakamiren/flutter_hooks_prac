import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final count = useState(0);
    void countIncrement() {
      count.value++;
    }

    void resetCount() {
      count.value = 0;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("hooks"),
        elevation: 1,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "hello hooks count: ${count.value.toString()}",
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          TextButton(
            onPressed: countIncrement,
            child: Text(
              "tap to increment",
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          ),
          TextButton(
            onPressed: resetCount,
            child: Text(
              "reset",
              style: TextStyle(color: Theme.of(context).errorColor),
            ),
          ),
        ],
      ),
    );
  }
}
