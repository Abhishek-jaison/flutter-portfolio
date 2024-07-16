import 'package:flutter/material.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
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
            Container(constraints: BoxConstraints(
                minWidth: 200.0, // Set the minimum width
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
                    Text('Application Development'),
                    Text(
                      'Online',
                      style: TextStyle(fontSize: 11, color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
            Container(constraints: BoxConstraints(
                minWidth: 200.0, // Set the minimum width
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
                      '2022 - 2026',
                      style: TextStyle(
                          fontSize: 11,
                          color: Color.fromARGB(255, 2, 216, 138)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('BTech in Computer Science'),
                    Text(
                      'Christ College',
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
                minWidth: 200.0, // Set the minimum width
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
                      '2020 -2022',
                      style: TextStyle(
                          fontSize: 11,
                          color: Color.fromARGB(255, 2, 216, 138)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('12ᵗʰ Grade CS'),
                    Text(
                      'NMCS TCR',
                      style: TextStyle(fontSize: 11, color: Colors.grey),
                    )
                  ],
                ),
              ),
            ),
            Container(constraints: BoxConstraints(
                minWidth: 200.0, // Set the minimum width
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
                    Text('Web site Development'),
                    Text(
                      'Online',
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
