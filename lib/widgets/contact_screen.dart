import 'package:flutter/material.dart';

class UserForm extends StatefulWidget {
  const UserForm({super.key});

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  String? _selectedValue;

  // List of items in the dropdown
  final List<String> _items = [
    'Mobile Application Development                                                  ',
    'Web Application Development',
    'UI/UX Development'
  ];

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
                  color: Color.fromARGB(255, 30, 30, 30),
                ),
                width: 400,
                height: 500, // Adjust the width as needed
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Let\'s Work together',
                      style: TextStyle(
                          color: Color.fromARGB(255, 2, 216, 138),
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Feel free to reach out to me for collaborations, inquiries, or just to connect!',
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 30,
                            width: 170,
                            color: Colors.black,
                            child: TextField(
                                style: TextStyle(fontSize: 12),
                                decoration: InputDecoration(
                                  hintText: 'First Name',
                                  hintStyle: TextStyle(
                                      color:
                                          const Color.fromARGB(255, 81, 81, 81),
                                      fontSize: 12),
                                  border: OutlineInputBorder(),
                                ))),
                        Container(
                            height: 30,
                            width: 170,
                            color: Colors.black,
                            child: TextField(
                                style: TextStyle(fontSize: 12),
                                decoration: InputDecoration(
                                  hintText: 'Last Name',
                                  hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 81, 81, 81),
                                      fontSize: 12),
                                  border: OutlineInputBorder(),
                                ))),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 30,
                            width: 170,
                            color: Colors.black,
                            child: TextField(
                                style: TextStyle(fontSize: 12),
                                decoration: InputDecoration(
                                  hintText: 'Email Address',
                                  hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 81, 81, 81),
                                      fontSize: 12),
                                  border: OutlineInputBorder(),
                                ))),
                        Container(
                            height: 30,
                            width: 170,
                            color: Colors.black,
                            child: TextField(
                                style: TextStyle(fontSize: 12),
                                decoration: InputDecoration(
                                  hintText: 'Phone NUmber',
                                  hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 81, 81, 81),
                                      fontSize: 12),
                                  border: OutlineInputBorder(),
                                ))),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 370,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 0, 0, 0), // Background color of the dropdown menu
                        border: Border.all(
                            color: Colors.grey,
                            width: 1.0), // Border color and width
                        borderRadius: BorderRadius.circular(
                            5.0), // Optional: Rounded corners
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: _selectedValue,
                          hint: Text(
                            'Select a service',
                            style: TextStyle(fontSize: 12, color:Color.fromARGB(255, 81, 81, 81)),
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              _selectedValue = newValue;
                            });
                          },
                          items: _items
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Color.fromARGB(255, 188, 188, 188)),
                              ),
                            );
                          }).toList(),
                          dropdownColor: const Color.fromARGB(255, 0, 0, 0), // Background color of the dropdown items
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromARGB(255, 217, 217, 217)), // Text style of the dropdown items
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                        color: Colors.black,
                        height: 110,
                        width: 380,
                        child: TextField(
                            style: TextStyle(fontSize: 12),
                            maxLines: 5,
                            decoration: InputDecoration(
                              hintText: 'Type ypur message here',
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(255, 81, 81, 81),
                                  fontSize: 12),
                              border: OutlineInputBorder(),
                            ))),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'SUBMIT',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontSize: 12),
                      ),
                      style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all<Color>(
                              Color.fromARGB(255, 2, 216, 138)),
                          side: WidgetStateProperty.all<BorderSide>(
                            BorderSide(
                                color: Color.fromARGB(255, 2, 216, 138),
                                width: 2.0),
                          ),
                          shape:
                              WidgetStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ))),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 60,
              ), // Optional spacing between containers

              // Right Container
              Container(
                width: 340,
                height: 600,
                // Adjust the width as needed
                decoration: BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 30, 30, 30),
                            ),
                            height: 30,
                            width: 30,
                            child: Icon(
                              Icons.phone,
                              size: 15,
                              color: Color.fromARGB(255, 2, 216, 138),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Phone',
                                style:
                                    TextStyle(fontSize: 11, color: Colors.grey),
                              ),
                              Text(
                                '(+91) 87147 26501',
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            color: Color.fromARGB(255, 30, 30, 30),
                            child: Icon(
                              Icons.email,
                              size: 15,
                              color: Color.fromARGB(255, 2, 216, 138),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Email',
                                style:
                                    TextStyle(fontSize: 11, color: Colors.grey),
                              ),
                              Text(
                                'abhishekjaison04@gmail.com',
                                style: TextStyle(fontSize: 12),
                              ),
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
