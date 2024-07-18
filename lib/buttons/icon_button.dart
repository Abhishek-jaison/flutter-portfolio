import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final String link;
  final VoidCallback onPressed;

  final double? fontSize;

  const CustomIconButton({
    super.key,
     required this.link,
    required this.onPressed,

    this.fontSize,
  
  });

  @override
  Widget build(BuildContext context) {
    return   IconButton(
                      onPressed: onPressed,
                      icon: Image.network(
                        '$link',
                        color: Color.fromARGB(255, 2, 216, 138),
                        height: 30,
                      ));
  }
}
