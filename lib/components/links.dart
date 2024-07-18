

import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

class Links extends StatelessWidget {
  const Links({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}



void downloadResume() {
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
  void linkedinlink(){
    final url = 'https://www.linkedin.com/in/abhishek-jaison-n-b6366526b/'; // Replace with the actual URL of your resume
    final anchor = html.AnchorElement(href: url)
      ..setAttribute('download', 'Abhishek_jaison_resume.pdf') // Replace with the desired file name
      ..setAttribute('target', '_blank') // Open in a new tab
      ..click();
  }
  
  void instagramlink(){
    final url = 'https://www.instagram.com/_.a_b_h_i.__/'; // Replace with the actual URL of your resume
    final anchor = html.AnchorElement(href: url)
      ..setAttribute('download', 'Abhishek_jaison_resume.pdf') // Replace with the desired file name
      ..setAttribute('target', '_blank') // Open in a new tab
      ..click();
  }