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
  Color cColor = Colors.white;
  Color databaseColor = Colors.white;
  Color htmlColor = Colors.white;
  Color cssColor = Colors.white;
  Color figmaColor = Colors.white;
  Color codeColor = Colors.white;

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
            MouseRegion(
              onEnter: (_) => setState(() => flutterColor = Color.fromARGB(255, 2, 216, 138)),
              onExit: (_) => setState(() => flutterColor = Colors.white),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromARGB(255, 43, 42, 42),
                ),
                child: SizedBox(
                  width: 75,
                  height: 75,
                  child: Image.asset(
                    'images/flutter.png',
                    color: flutterColor,
                  ),
                ),
              ),
            ),
            MouseRegion(
              onEnter: (_) => setState(() => pythonColor = Color.fromARGB(255, 2, 216, 138)),
              onExit: (_) => setState(() => pythonColor = Colors.white),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromARGB(255, 43, 42, 42),
                ),
                child: SizedBox(
                  width: 75,
                  height: 75,
                  child: Image.asset(
                    'images/python.png',
                    color: pythonColor,
                  ),
                ),
              ),
            ),
            MouseRegion(
              onEnter: (_) => setState(() => cColor = Color.fromARGB(255, 2, 216, 138)),
              onExit: (_) => setState(() => cColor = Colors.white),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromARGB(255, 43, 42, 42),
                ),
                child: SizedBox(
                  width: 75,
                  height: 75,
                  child: Image.asset(
                    'images/Cprogramming.png',
                    color: cColor,
                  ),
                ),
              ),
            ),
            MouseRegion(
              onEnter: (_) => setState(() => databaseColor = Color.fromARGB(255, 2, 216, 138)),
              onExit: (_) => setState(() => databaseColor = Colors.white),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromARGB(255, 43, 42, 42),
                ),
                child: SizedBox(
                  width: 75,
                  height: 75,
                  child: Image.asset(
                    'images/database.png',
                    color: databaseColor,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            MouseRegion(
              onEnter: (_) => setState(() => htmlColor = Color.fromARGB(255, 2, 216, 138)),
              onExit: (_) => setState(() => htmlColor = Colors.white),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromARGB(255, 43, 42, 42),
                ),
                child: SizedBox(
                  width: 75,
                  height: 75,
                  child: Image.asset(
                    'images/html.png',
                    color: htmlColor,
                  ),
                ),
              ),
            ),
            MouseRegion(
              onEnter: (_) => setState(() => cssColor = Color.fromARGB(255, 2, 216, 138)),
              onExit: (_) => setState(() => cssColor = Colors.white),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromARGB(255, 43, 42, 42),
                ),
                child: SizedBox(
                  width: 75,
                  height: 75,
                  child: Image.asset(
                    'images/css.png',
                    color: cssColor,
                  ),
                ),
              ),
            ),
            MouseRegion(
              onEnter: (_) => setState(() => figmaColor = Color.fromARGB(255, 2, 216, 138)),
              onExit: (_) => setState(() => figmaColor = Colors.white),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromARGB(255, 43, 42, 42),
                ),
                child: SizedBox(
                  width: 75,
                  height: 75,
                  child: Image.asset(
                    'images/figma.png',
                    color: figmaColor,
                  ),
                ),
              ),
            ),
            MouseRegion(
              onEnter: (_) => setState(() => codeColor = Color.fromARGB(255, 2, 216, 138)),
              onExit: (_) => setState(() => codeColor = Colors.white),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromARGB(255, 43, 42, 42),
                ),
                child: SizedBox(
                  width: 75,
                  height: 75,
                  child: Image.asset(
                    'images/Code.png',
                    color: codeColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
