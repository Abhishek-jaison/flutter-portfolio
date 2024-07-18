import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth >= 800) {
      return SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HoverContainer(
                  titleNumber: '01',
                  title: 'Web Development',
                  description:
                      'Passionate web developer skilled in creating dynamic, user-friendly websites and web applications.',
                ),
                HoverContainer(
                  titleNumber: '02',
                  title: 'App Development',
                  description:
                      'Mobile app developer specializing in building high-performance applications using Flutter.',
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HoverContainer(
                  titleNumber: '03',
                  title: 'Cross-Platform Development',
                  description:
                      'Building applications that work on both iOS and Android from a single codebase using Flutter.',
                ),
                HoverContainer(
                  titleNumber: '04',
                  title: 'UI/UX Design',
                  description:
                      'Dedicated UI/UX designer focused on crafting intuitive and engaging user experiences.',
                ),
              ],
            )
          ],
        ),
      );
    } else {
      return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HoverContainer(
                titleNumber: '01',
                title: 'Web Development',
                description:
                    'Passionate web developer skilled in creating dynamic, user-friendly websites and web applications.',
              ),
              HoverContainer(
                titleNumber: '02',
                title: 'App Development',
                description:
                    'Mobile app developer specializing in building high-performance applications using Flutter.',
              ),
              HoverContainer(
                titleNumber: '03',
                title: 'Cross-Platform Development',
                description:
                    'Building applications that work on both iOS and Android from a single codebase using Flutter.',
              ),
              HoverContainer(
                titleNumber: '04',
                title: 'UI/UX Design',
                description:
                    'Dedicated UI/UX designer focused on crafting intuitive and engaging user experiences.',
              )
            ],
          ),
        ),
      );
    }
  }
}

/////
class NewHoverContainer extends StatefulWidget {
  final String titleNumber;
  final String title;
  final String description;
  const NewHoverContainer({
    super.key,
    required this.titleNumber,
    required this.title,
    required this.description,
  });

  @override
  State<NewHoverContainer> createState() => _NewHoverContainerState();
}

class _NewHoverContainerState extends State<NewHoverContainer> {
    Color _textColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    double swidth = MediaQuery.of(context).size.width;
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: Container(
        width: swidth-30,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25,
            ),
            Text(
              widget.titleNumber,
              style: TextStyle(
                  fontSize: 35, fontWeight: FontWeight.bold, color: _textColor),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.title,
              style: TextStyle(fontSize: 24, color: _textColor),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.description,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w200,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Color.fromARGB(255, 45, 45, 45),
            )
          ],
        ),
      ),
    );
  
  }
    void _onHover(bool isHovering) {
    setState(() {
      _textColor = isHovering ? Color.fromARGB(255, 2, 216, 138) : Colors.white;
    });
  }
}

/////
class HoverContainer extends StatefulWidget {
  final String titleNumber;
  final String title;
  final String description;

  const HoverContainer({
    Key? key,
    required this.titleNumber,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  _HoverContainerState createState() => _HoverContainerState();
}

class _HoverContainerState extends State<HoverContainer> {
  Color _textColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _onHover(true),
      onExit: (_) => _onHover(false),
      child: Container(
        width: 350,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              widget.titleNumber,
              style: TextStyle(
                  fontSize: 35, fontWeight: FontWeight.bold, color: _textColor),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.title,
              style: TextStyle(fontSize: 24, color: _textColor),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.description,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w100,
                color: Colors.grey[800],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Color.fromARGB(255, 45, 45, 45),
            )
          ],
        ),
      ),
    );
  }

  void _onHover(bool isHovering) {
    setState(() {
      _textColor = isHovering ? Color.fromARGB(255, 2, 216, 138) : Colors.white;
    });
  }
}
