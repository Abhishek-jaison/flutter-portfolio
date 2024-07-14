import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/components/counter.dart';
import 'package:portfolio/functions/nav_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Colors.transparent, // Make the app bar transparent
            elevation: 0, // Remove the shadow
            flexibleSpace: Center(
              child: ConstrainedBox(
                constraints:
                    BoxConstraints(maxWidth: 800), // Set the desired width here
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Abhishek',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        NavItem(title: 'Home', onTap: () {}),
                        NavItem(title: 'Services', onTap: () {}),
                        NavItem(title: 'Work', onTap: () {}),
                        NavItem(title: 'Resume', onTap: () {}),
                        NavItem(title: 'Contact', onTap: () {}),
                        NavItem(title: 'Hire Me', onTap: () {}),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: Center(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxWidth: 800), // Set the desired width here
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Application Developer',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text('Hello I\'m '),
                        Text('Abhishek Jaison'),
                        Text(
                            'I excel at creating elegent digital experience and \n I am proficient in various programming languages and \n technologies.'),
                      ],
                    ),
                    Lottie.asset('images/man.json',height: 200,width: 200),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'DOWNLOAD RESUME',
                        style:
                            TextStyle(color: Color.fromARGB(255, 2, 216, 138)),
                      ),
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all<Color>(Colors.transparent),
                        side: WidgetStateProperty.all<BorderSide>(
                          BorderSide(
                              color: Color.fromARGB(255, 2, 216, 138),
                              width: 2.0),
                        ),
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Image.network(
                          'https://img.icons8.com/?size=100&id=zuHqpgzrusU5&format=png&color=000000',
                          color: Color.fromARGB(255, 2, 216, 138),
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Image.network(
                          'https://img.icons8.com/?size=100&id=8808&format=png&color=000000',
                          color: Color.fromARGB(255, 2, 216, 138),
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Image.network(
                          'https://img.icons8.com/?size=100&id=32309&format=png&color=000000',
                          color: Color.fromARGB(255, 2, 216, 138),
                        )),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Counter(targetNumber: 1, animationDuration: Duration(seconds: 1)),
                        Text(' Years of \n experience'),
                      ],
                    ),
                    Row(
                      children: [
                        Counter(targetNumber: 6, animationDuration: Duration(seconds: 3)),
                        Text(' Projects \n completed'),
                      ],
                    ),
                    Row(
                      children: [
                        Counter(targetNumber: 5, animationDuration: Duration(seconds: 2)),
                        Text(' Technologies \n mastered'),
                      ],
                    ),
                    Row(
                      children: [
                        
                        Counter(targetNumber: 120, animationDuration: Duration(seconds: 6)),
                        Text(' Hour\'s \n spent'),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
