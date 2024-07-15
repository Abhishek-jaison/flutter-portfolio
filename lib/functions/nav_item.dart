import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool isSelected;

  NavItem({
    required this.title,
    required this.onTap,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                color: isSelected? Color.fromARGB(255, 2, 216, 138): Colors.white,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 200),
            height: 2,
            width: isSelected ? 40 : 0,
            color: Color.fromARGB(255, 2, 216, 138),
          ),
        ],
      ),
    );
  }
}
