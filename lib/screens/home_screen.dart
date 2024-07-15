import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/components/counter.dart';
import 'package:portfolio/functions/nav_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: AppBar(
            backgroundColor: Colors.transparent,
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
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          NavItem(
                              title: 'Home',
                              onTap: () => _onTabTapped(0),
                              isSelected: _selectedIndex == 0),
                          NavItem(
                              title: 'Services',
                              onTap: () => _onTabTapped(1),
                              isSelected: _selectedIndex == 1),
                          NavItem(
                              title: 'Work',
                              onTap: () => _onTabTapped(2),
                              isSelected: _selectedIndex == 2),
                          NavItem(
                              title: 'Resume',
                              onTap: () => _onTabTapped(3),
                              isSelected: _selectedIndex == 3),
                          NavItem(
                              title: 'Contact',
                              onTap: () => _onTabTapped(4),
                              isSelected: _selectedIndex == 4),
                          NavItem(
                              title: 'Hire Me',
                              onTap: () => _onTabTapped(5),
                              isSelected: _selectedIndex == 5),
                        ],
                      ),
                    ]),
              ),
            ),
          ),
        ),
        body: Center(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxWidth: 800), // Set the desired width here
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Application Developer',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w100,
                                color:
                                    const Color.fromARGB(255, 203, 202, 202)),
                          ),
                          Text(
                            'Hello I\'m ',
                            style: TextStyle(
                                fontSize: 60, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Abhishek Jaison',
                            style: TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 2, 216, 138)),
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            'I excel at creating elegent digital experience and \nI am proficient in various programming languages and \ntechnologies.',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.grey[600]),
                          ),
                          SizedBox(
                            height: 80,
                          )
                        ],
                      ),
                      Lottie.asset('images/man.json', height: 300, width: 300),
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'DOWNLOAD RESUME',
                          style: TextStyle(
                              color: Color.fromARGB(255, 2, 216, 138),
                              fontSize: 8),
                        ),
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(
                              Colors.transparent),
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
                            height: 30,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Image.network(
                            'https://img.icons8.com/?size=100&id=8808&format=png&color=000000',
                            color: Color.fromARGB(255, 2, 216, 138),
                            height: 30,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: Image.network(
                            'https://img.icons8.com/?size=100&id=32292&format=png&color=000000',
                            color: Color.fromARGB(255, 2, 216, 138),
                            height: 30,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Counter(
                              targetNumber: 1,
                              animationDuration: Duration(seconds: 1)),
                          Text(' Years of \n experience'),
                        ],
                      ),
                      Row(
                        children: [
                          Counter(
                              targetNumber: 6,
                              animationDuration: Duration(seconds: 3)),
                          Text(' Projects \n completed'),
                        ],
                      ),
                      Row(
                        children: [
                          Counter(
                              targetNumber: 5,
                              animationDuration: Duration(seconds: 2)),
                          Text(' Technologies \n mastered'),
                        ],
                      ),
                      Row(
                        children: [
                          Counter(
                              targetNumber: 120,
                              animationDuration: Duration(seconds: 6)),
                          Text(' Hour\'s \n spent'),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
