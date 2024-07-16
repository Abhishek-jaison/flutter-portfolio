import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Experience extends StatefulWidget {
  const Experience({super.key});

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
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
            Container(
              constraints: BoxConstraints(
                minWidth: 210.0, // Set the minimum width
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color.fromARGB(255, 43, 42, 42),
              ),
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '2024 - Present',
                      style: TextStyle(
                          fontSize: 11,
                          color: Color.fromARGB(255, 2, 216, 138)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Mobile Application Developer'),
                    Text(
                      'Intern at F Salon Academy',
                      style: TextStyle(fontSize: 11, color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
            Container(
              constraints: BoxConstraints(
                minWidth: 210.0, // Set the minimum width
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color.fromARGB(255, 43, 42, 42),
              ),
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '2023',
                      style: TextStyle(
                          fontSize: 11,
                          color: Color.fromARGB(255, 2, 216, 138)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Web-site Developer'),
                    Text(
                      'Intern at Talrop',
                      style: TextStyle(fontSize: 11, color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              constraints: BoxConstraints(
                minWidth: 210.0, // Set the minimum width
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color.fromARGB(255, 43, 42, 42),
              ),
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '2024 - Present',
                      style: TextStyle(
                          fontSize: 11,
                          color: Color.fromARGB(255, 2, 216, 138)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Mobile Application Developer'),
                    Text(
                      'Intern at F Salon Academy',
                      style: TextStyle(fontSize: 11, color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
            Container(
              constraints: BoxConstraints(
                minWidth: 210.0, // Set the minimum width
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color.fromARGB(255, 43, 42, 42),
              ),
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '2024 - Present',
                      style: TextStyle(
                          fontSize: 11,
                          color: Color.fromARGB(255, 2, 216, 138)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Mobile Application Developer'),
                    Text(
                      'Intern at F Salon Academy',
                      style: TextStyle(fontSize: 11, color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
