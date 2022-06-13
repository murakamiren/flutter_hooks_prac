import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeView extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hooks"),
      ),
      body: Center(
        child: Text("hello hooks"),
      ),
    );
  }
}
