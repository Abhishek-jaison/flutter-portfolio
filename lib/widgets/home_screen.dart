


import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:path_provider/path_provider.dart';
import 'package:portfolio/buttons/icon_button.dart';
import 'package:portfolio/components/counter.dart';
import 'package:portfolio/components/links.dart';
import 'package:universal_html/html.dart' as html;


class HomeScreenContent extends StatefulWidget {
  const HomeScreenContent({super.key});

  @override
  State<HomeScreenContent> createState() => _HomeScreenContentState();
}

class _HomeScreenContentState extends State<HomeScreenContent> {
    void _downloadResume() {
    final url = 'https://drive.google.com/file/d/1rfYrSTsMrfYfLhAhYPIuUUu1dPif74hV/view?usp=drive_link'; // Replace with the actual URL of your resume
    final anchor = html.AnchorElement(href: url)
      ..setAttribute('download', 'Abhishek_jaison_resume.pdf') // Replace with the desired file name
      ..setAttribute('target', '_blank') // Open in a new tab
      ..click();
  }

  void githublink(){
    final url = 'https://github.com/Abhishek-jaison'; // Replace with the actual URL of your resume
    final anchor = html.AnchorElement(href: url)
      ..setAttribute('download', 'Abhishek_jaison_resume.pdf') // Replace with the desired file name
      ..setAttribute('target', '_blank') // Open in a new tab
      ..click();
  }
  void _linkedinlink(){
    final url = 'https://www.linkedin.com/in/abhishek-jaison-n-b6366526b/'; // Replace with the actual URL of your resume
    final anchor = html.AnchorElement(href: url)
      ..setAttribute('download', 'Abhishek_jaison_resume.pdf') // Replace with the desired file name
      ..setAttribute('target', '_blank') // Open in a new tab
      ..click();
  }
  
  void _instagramlink(){
    final url = 'https://www.instagram.com/_.a_b_h_i.__/'; // Replace with the actual URL of your resume
    final anchor = html.AnchorElement(href: url)
      ..setAttribute('download', 'Abhishek_jaison_resume.pdf') // Replace with the desired file name
      ..setAttribute('target', '_blank') // Open in a new tab
      ..click();
  }
  @override
  Widget build(BuildContext context) {
    double screenWidth= MediaQuery.of(context).size.width;

    if(screenWidth >=800){
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        
      
        
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
                            color: const Color.fromARGB(255, 203, 202, 202)),
                      ),
                      Text(
                        'Hello I\'m ',
                        style:
                            TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
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
                    onPressed: _downloadResume,
                    child: Text(
                      'DOWNLOAD RESUME',
                      style: TextStyle(
                          color: Color.fromARGB(255, 2, 216, 138), fontSize: 8),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          WidgetStateProperty.all<Color>(Colors.transparent),
                      side: WidgetStateProperty.all<BorderSide>(
                        BorderSide(
                            color: Color.fromARGB(255, 2, 216, 138), width: 2.0),
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: githublink,
                      icon: Image.network(
                        'https://img.icons8.com/?size=100&id=zuHqpgzrusU5&format=png&color=000000',
                        color: Color.fromARGB(255, 2, 216, 138),
                        height: 30,
                      )),
                  IconButton(
                      onPressed: _linkedinlink,
                      icon: Image.network(
                        'https://img.icons8.com/?size=100&id=8808&format=png&color=000000',
                        color: Color.fromARGB(255, 2, 216, 138),
                        height: 30,
                      )),
                  IconButton(
                      onPressed: _instagramlink,
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
                          animationDuration: Duration(seconds: 2)),
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
                          animationDuration: Duration(seconds: 4)),
                      Text(' Hour\'s spent\non coding'),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      
    );
  
    }
    else{
       return Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                        'Application Developer',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w100,
                            color: const Color.fromARGB(255, 203, 202, 202)),
                      ),
                      Text(
                        'Hello I\'m ',
                        style:
                            TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Abhishek',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 2, 216, 138)),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        'I excel at creating elegent digital experience and \nI am proficient in various programming languages and technologies.',
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey[600]),
                      ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset('images/man.json',
                        height: screenWidth -100, width: screenWidth - 100),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: downloadResume,
                      child: Text(
                        'DOWNLOAD RESUME',
                        style: TextStyle(
                            color: Color.fromARGB(255, 2, 216, 138),
                            fontSize: 8),
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
                    CustomIconButton(
                        link:
                            'https://img.icons8.com/?size=100&id=zuHqpgzrusU5&format=png&color=000000',
                        onPressed: githublink),
                    CustomIconButton(
                        link:
                            'https://img.icons8.com/?size=100&id=8808&format=png&color=000000',
                        onPressed: linkedinlink),
                    CustomIconButton(
                        link:
                            'https://img.icons8.com/?size=100&id=32292&format=png&color=000000',
                        onPressed: instagramlink),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Counter(
                              targetNumber: 1,
                              animationDuration: Duration(seconds: 1)),
                          Text(' Years of \n experience'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Counter(
                              targetNumber: 6,
                              animationDuration: Duration(seconds: 2)),
                          Text(' Projects \n completed'),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Counter(
                              targetNumber: 5,
                              animationDuration: Duration(seconds: 2)),
                          Text(' Technologies \n mastered'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Counter(
                              targetNumber: 120,
                              animationDuration: Duration(seconds: 4)),
                          Text(' Hour\'s spent\non coding'),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
    }
  }

} 


