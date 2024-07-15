import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  NavItem({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Text(
          title,
          style: TextStyle(fontSize: 18, color: Colors.white),
          
        ),
      ),
    );
  }
}