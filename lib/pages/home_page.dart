import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home page")),
      body: Center(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 900),
          reverseDuration: const Duration(milliseconds: 30),
          child: Text(
            "$_counter",
            key: ValueKey<int>(_counter),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.displaySmall,
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
      ),
    );
  }
}
