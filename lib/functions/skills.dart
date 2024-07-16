import 'package:flutter/material.dart';

class Skills extends StatefulWidget {
  const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
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
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildHoverableContainer('images/flutter.png', flutterColor, onHover: (isHovering) {
              setState(() {
                isHoveringFlutter = isHovering;
                flutterColor = isHovering ? Color.fromARGB(255, 2, 216, 138): Colors.white;
              });
            }, isHovering: isHoveringFlutter),
            buildHoverableContainer('images/python.png', pythonColor, onHover: (isHovering) {
              setState(() {
                isHoveringPython = isHovering;
                pythonColor = isHovering ? Color.fromARGB(255, 2, 216, 138): Colors.white;
              });
            }, isHovering: isHoveringPython),
            buildHoverableContainer('images/Cprogramming.png', cColor, onHover: (isHovering) {
              setState(() {
                isHoveringC = isHovering;
                cColor = isHovering ? Color.fromARGB(255, 2, 216, 138): Colors.white;
              });
            }, isHovering: isHoveringC),
            buildHoverableContainer('images/database.png', databaseColor, onHover: (isHovering) {
              setState(() {
                isHoveringDatabase = isHovering;
                databaseColor = isHovering ? Color.fromARGB(255, 2, 216, 138): Colors.white;
              });
            }, isHovering: isHoveringDatabase),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildHoverableContainer('images/html.png', htmlColor, onHover: (isHovering) {
              setState(() {
                isHoveringHtml = isHovering;
                htmlColor = isHovering ? Color.fromARGB(255, 2, 216, 138): Colors.white;
              });
            }, isHovering: isHoveringHtml),
            buildHoverableContainer('images/css.png', cssColor, onHover: (isHovering) {
              setState(() {
                isHoveringCss = isHovering;
                cssColor = isHovering ? Color.fromARGB(255, 2, 216, 138): Colors.white;
              });
            }, isHovering: isHoveringCss),
            buildHoverableContainer('images/figma.png', figmaColor, onHover: (isHovering) {
              setState(() {
                isHoveringFigma = isHovering;
                figmaColor = isHovering ? Color.fromARGB(255, 2, 216, 138): Colors.white;
              });
            }, isHovering: isHoveringFigma),
            buildHoverableContainer('images/Code.png', codeColor, onHover: (isHovering) {
              setState(() {
                isHoveringCode = isHovering;
                codeColor = isHovering ? Color.fromARGB(255, 2, 216, 138): Colors.white;
              });
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
