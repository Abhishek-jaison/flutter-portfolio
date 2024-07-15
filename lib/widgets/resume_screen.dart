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
  String selectedSection = 'My Experience'; // Default section

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
                SizedBox(
                  height: 75,
                ),
                Text(
                  'Why Hire me?',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'I am a hardworking and dedicated person who is always looking to learn new things ',
                  style: TextStyle(
                      fontWeight: FontWeight.w200,
                      color: const Color.fromARGB(255, 148, 140, 140)),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: _buildButton('Experience'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: _buildButton('Education'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: _buildButton('Skills'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Expanded(
                      child: _buildButton('About me'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Container(
            width: 500,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 75,
                ),
                Text(selectedSection),
                SizedBox(height: 10),
                _getContentForSection(selectedSection),
              ],
            ),
          ),
        ],
      ),
    );
  }

  ElevatedButton _buildButton(String label) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          selectedSection = label;
        });
      },
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return Color.fromARGB(255, 2, 216, 138); // Hover color
            } else if (states.contains(WidgetState.pressed)) {
              return Color.fromARGB(255, 2, 216, 138); // Pressed color
            }
            return Color.fromARGB(255, 33, 33, 33); // Default color
          },
        ),
        foregroundColor: WidgetStateProperty.resolveWith<Color>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return Colors.black;
            } else if (states.contains(WidgetState.pressed)) {
              return Colors.black;
            }
            return Colors.white;
          },
        ),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        padding: WidgetStateProperty.all<EdgeInsetsGeometry>(
          EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
        ),
      ),
      child: Text(label),
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
      case 'About me':
        return AboutMe();
      default:
        return Container();
    }
  }
}