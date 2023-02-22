import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String role;
  final String group;
  
  const InfoCard({
    super.key,
    required this.role,
    required this.group,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.white24,
        child: Icon(
          CupertinoIcons.person,
          color: Colors.white,
        ),
      ),
      title: Text(
        role,
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        group,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
