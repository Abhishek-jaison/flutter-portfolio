import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  
  final double? fontSize;


  const CustomElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,

    this.fontSize,
  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        '$text',
        style: TextStyle(color: Colors.black),
      ),
      style: ButtonStyle(
          backgroundColor:
              WidgetStateProperty.all<Color>(Color.fromARGB(255, 2, 216, 138)),
          side: WidgetStateProperty.all<BorderSide>(
            BorderSide(color: Color.fromARGB(255, 2, 216, 138), width: 2.0),
          ),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ))),
    );
  }
}


// ElevatedButton(
//                               onPressed: () => _onTabTapped(4),
//                               child: Text(
//                                 'Hire Me',
//                                 style: TextStyle(
//                                     color: Color.fromARGB(255, 0, 0, 0),
//                                     fontSize: 16),
//                               ),
//                               style: ButtonStyle(
//                                   backgroundColor:
//                                       WidgetStateProperty.all<Color>(
//                                           Color.fromARGB(255, 2, 216, 138)),
//                                   side: WidgetStateProperty.all<BorderSide>(
//                                     BorderSide(
//                                         color: Color.fromARGB(255, 2, 216, 138),
//                                         width: 2.0),
//                                   ),
//                                   shape: WidgetStateProperty.all<
//                                           RoundedRectangleBorder>(
//                                       RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(14),
//                                   ))),
//                             ),