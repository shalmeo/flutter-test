import 'package:flutter/material.dart';

class SideMenuTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback press;
  final bool isActive;

  const SideMenuTile({
    super.key,
    required this.icon,
    required this.title,
    required this.press,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Divider(
            color: Colors.white24,
            height: 1,
          ),
        ),
        Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(microseconds: 300),
              height: 48,
              width: isActive ? 288 : 0,
              left: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF6792FF),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
            ListTile(
              onTap: press,
              leading: SizedBox(
                height: 34,
                width: 34,
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
              title: Text(
                title,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        )
      ],
    );
  }
}
