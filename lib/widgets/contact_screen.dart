import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class UserForm extends StatefulWidget {
  const UserForm({super.key});

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  String? _selectedValue;

  // List of items in the dropdown
  final List<String> _items = ['Mobile Application Development                            ', 'Web Application Development', 'UI/UX Development'];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 800,
          
          child: Row(
            children: [
              // Left Container
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 56, 56, 56),
                ),
                width: 400, 
                height: 400,// Adjust the width as needed
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('Let\'s Work together'),
                    Text(
                        'Feel free to reach out to me for collaborations, inquiries, or just to connect!'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(width: 180, child: TextField()),
                        Container(width: 180, child: TextField()),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(width: 180, child: TextField()),
                        Container(width: 180, child: TextField()),
                      ],
                    ),
                    Container(
                      width: 380,
                      child: DropdownButton<String>(
                        value: _selectedValue,
                        hint: Text('Select an option'),
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedValue = newValue;
                          });
                        },
                        items: _items
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                    TextField(maxLines: 5),
                    SizedBox(height: 20,),
                    ElevatedButton(onPressed: (){}, child: Text('Send messege'))
                  ],
                ),
              ),
              SizedBox(width: 16), // Optional spacing between containers

              // Right Container
              Container(
                width: 384, 
                height: 600,
              // Adjust the width as needed
                decoration: BoxDecoration(
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.phone,color: Colors.white,),
                                            
                          Column(
                            children: [
                              Text(
                                'Phone',
                              ),
                              Text('(+91) 87145 26505'),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 30,),
                      Row(
                        children: [
                          Icon(Icons.email,color: Colors.white,),
                          Column(
                            children: [
                              Text('Email'),
                              Text('abhishekjaison04@gmail.com'),
                            ],
                          ),
                        ],
                      ),
                      
                      // Add more widgets as needed
                      
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}