import 'package:flutter/material.dart';
import 'package:portfolio/functions/about_me.dart';
import 'package:portfolio/functions/education.dart';
import 'package:portfolio/functions/experience.dart';
import 'package:portfolio/functions/skills.dart';

class ResumeScreen extends StatefulWidget {
  const ResumeScreen({super.key});

  @override
  State<ResumeScreen> createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  String selectedSection = 'Experience'; // Default section

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 250,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 75),
                Text(
                  'Why Hire me?',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'I am a hardworking and dedicated person who is always looking to learn new things.',
                  style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: Color.fromARGB(255, 148, 140, 140)),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    _buildButton('Experience'),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    _buildButton('Education'),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    _buildButton('Skills'),
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    _buildButton('About Me'),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(width: 30),
          Container(
            width: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 75),
                _getContentForSection(selectedSection),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(String label) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            selectedSection = label;
          });
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (selectedSection == label) {
                return Color.fromARGB(255, 2, 216, 138); // Selected color
              }
              if (states.contains(MaterialState.hovered)) {
                return Color.fromARGB(255, 2, 216, 138); // Hover color
              }
              return Color.fromARGB(255, 33, 33, 33); // Default color
            },
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (selectedSection == label) {
                return Colors.black; // Selected text color
              }
              if (states.contains(MaterialState.hovered)) {
                return Colors.black;
              }
              return Colors.white; // Default text color
            },
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          ),
        ),
        child: Text(label),
      ),
    );
  }

  Widget _getContentForSection(String section) {
    switch (section) {
      case 'Experience':
        return Experience();
      case 'Education':
        return Education();
      case 'Skills':
        return Skills();
      case 'About Me':
        return AboutMe();
      default:
        return Container();
    }
  }
}
