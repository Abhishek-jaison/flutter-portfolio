import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/screens/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyCHjWnc2b1XMcKlnGMo1NB81i9Z5iWf9QE",
      appId: "1:507416867819:web:bd7ccec903c1e654115fae",
      messagingSenderId: "507416867819",
      projectId: "flutter-portfolio-21015",
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
        textTheme: TextTheme(
          bodyLarge:
              TextStyle(color: Colors.white), // Change to your desired color
          bodyMedium:
              TextStyle(color: Colors.white), // Change to your desired color
        ),
        scaffoldBackgroundColor: Colors.black,
      ),
      home: HomeScreen(),
    );
  }
}
