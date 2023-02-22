import 'package:flutter/material.dart';

import 'components/side_menu.dart';

void main() => runApp(RootApp());

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Json Placeholder App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SideMenu(),
    );
  }
}