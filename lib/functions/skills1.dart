import 'package:flutter/material.dart';

class Skills1 extends StatefulWidget {
  const Skills1({super.key});

  @override
  State<Skills1> createState() => _Skills1State();
}

class _Skills1State extends State<Skills1> {
  // Define colors for each icon
  Color flutterColor = Colors.white;
  Color pythonColor = Colors.white;
  Color databaseColor = Colors.white;
  Color htmlColor = Colors.white;
  Color cssColor = Colors.white;
  Color figmaColor = Colors.white;
  Color codeColor = Colors.white;
  Color cColor=Colors.white;
  bool isHoveringC = false; // Track hover state for C icon
  bool isHoveringFlutter = false;
  bool isHoveringPython = false;
  bool isHoveringDatabase = false;
  bool isHoveringHtml = false;
  bool isHoveringCss = false;
  bool isHoveringFigma = false;
  bool isHoveringCode = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildHoverableContainer('images/flutter.png', flutterColor, onHover: (isHovering) {
             
            }, isHovering: isHoveringFlutter),
            buildHoverableContainer('images/python.png', pythonColor, onHover: (isHovering) {
              
            }, isHovering: isHoveringPython),
            buildHoverableContainer('images/Cprogramming.png', cColor, onHover: (isHovering) {
              
            }, isHovering: isHoveringC),
            buildHoverableContainer('images/database.png', databaseColor, onHover: (isHovering) {
             
            }, isHovering: isHoveringDatabase),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildHoverableContainer('images/html.png', htmlColor, onHover: (isHovering) {
            
            }, isHovering: isHoveringHtml),
            buildHoverableContainer('images/css.png', cssColor, onHover: (isHovering) {
              
            }, isHovering: isHoveringCss),
            buildHoverableContainer('images/figma.png', figmaColor, onHover: (isHovering) {
              
            }, isHovering: isHoveringFigma),
            buildHoverableContainer('images/Code.png', codeColor, onHover: (isHovering) {
              
            }, isHovering: isHoveringCode),
          ],
        ),
      ],
    );
  }

  Widget buildHoverableContainer(String assetPath, Color? color, {required Function(bool) onHover, required bool isHovering}) {
    return MouseRegion(
      onEnter: (_) => onHover(true),
      onExit: (_) => onHover(false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        width: isHovering ? 85 : 75,
        height: isHovering ? 85 : 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color.fromARGB(255, 43, 42, 42),
        ),
        child: Image.asset(
          assetPath,
          color: color,
        ),
      ),
    );
  }
}
