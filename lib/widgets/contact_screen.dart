import 'package:flutter/material.dart';
import 'package:portfolio/services/firestore.dart';
import 'package:portfolio/widgets/services_screen.dart';

class UserForm extends StatefulWidget {
  const UserForm({super.key});

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  String? selectedValue;

  final FirestoreService firestoreService = FirestoreService();
  TextEditingController fnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  
  TextEditingController messagecontroller = TextEditingController();
 String? new1;
  // List of items in the dropdown
  final List<String> _items = [
    'Mobile Application Development',
    'Web Application Development',
    'UI/UX Development'
  ];

  // String ?new1;
  @override
  Widget build(BuildContext context) {
    double swidth = MediaQuery.of(context).size.width;
    if (swidth >= 800) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Center(
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
                                    controller: fnameController,
                                    style: TextStyle(fontSize: 12),
                                    decoration: InputDecoration(
                                      hintText: 'First Name',
                                      hintStyle: TextStyle(
                                          color: const Color.fromARGB(
                                              255, 81, 81, 81),
                                          fontSize: 12),
                                      border: OutlineInputBorder(),
                                    ))),
                            Container(
                                height: 30,
                                width: 170,
                                color: Colors.black,
                                child: TextField(
                                    controller: lnameController,
                                    style: TextStyle(fontSize: 12),
                                    decoration: InputDecoration(
                                      hintText: 'Last Name',
                                      hintStyle: TextStyle(
                                          color:
                                              Color.fromARGB(255, 81, 81, 81),
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
                                    controller: emailController,
                                    style: TextStyle(fontSize: 12),
                                    decoration: InputDecoration(
                                      hintText: 'Email Address',
                                      hintStyle: TextStyle(
                                          color:
                                              Color.fromARGB(255, 81, 81, 81),
                                          fontSize: 12),
                                      border: OutlineInputBorder(),
                                    ))),
                            Container(
                                height: 30,
                                width: 170,
                                color: Colors.black,
                                child: TextField(
                                  controller: phoneController,
                                    style: TextStyle(fontSize: 12),
                                    decoration: InputDecoration(
                                      hintText: 'Phone NUmber',
                                      hintStyle: TextStyle(
                                          color:
                                              Color.fromARGB(255, 81, 81, 81),
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
                            color: const Color.fromARGB(255, 0, 0,
                                0), // Background color of the dropdown menu
                            border: Border.all(
                                color: Colors.grey,
                                width: 1.0), // Border color and width
                            borderRadius: BorderRadius.circular(
                                5.0), // Optional: Rounded corners
                          ),
                          child: DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        value: selectedValue,
        hint: Text(
          'Select a service',
          style: TextStyle(
              fontSize: 12, color: Color.fromARGB(255, 81, 81, 81)),
        ),
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue;
            switch (newValue) {
              case 'Mobile Application Development':
                new1 = 'Mobile Application Development';
                break;
              case 'Web Application Development':
                new1 = 'Web Application Development';
                break;
              case 'UI/UX Development':
                new1 = 'UI/UX Development';
                break;
              default:
                new1 = 'Other';
            }
          });
          
        },
        items: _items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(
                  fontSize: 12, color: Color.fromARGB(255, 188, 188, 188)),
            ),
          );
        }).toList(),
        dropdownColor: const Color.fromARGB(255, 0, 0, 0),
        style: TextStyle(
            fontSize: 12,
            color: Color.fromARGB(255, 217, 217, 217)),
      ),
    )
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                            color: Colors.black,
                            height: 110,
                            width: 380,
                            child: TextField(
                                controller: messagecontroller,
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
                          onPressed: () {
                            

                            firestoreService.addNote(
                                fnameController.text,
                                lnameController.text,
                                emailController.text,
                                phoneController.text,
                                new1,
                                messagecontroller.text
                                 );
                            setState(() {
                              selectedValue =null;
                            });
                            fnameController.clear();
                                lnameController.clear();
                                emailController.clear();
                                phoneController.clear();
                                messagecontroller.clear();
                          },
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
                              shape: WidgetStateProperty.all<
                                      RoundedRectangleBorder>(
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
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.grey),
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
                                    style: TextStyle(
                                        fontSize: 11, color: Colors.grey),
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
        ),
      );
    } else {
      return SingleChildScrollView(
        child: Center(
          child: Container(
            width: swidth,
            child: Column(
              children: [
                // Left Container
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 30, 30, 30),
                  ),
                  width: swidth - 20,
                  height: 500, // Adjust the width as needed
                  padding: const EdgeInsets.all(16),
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
                              width: swidth / 2 - 30,
                              color: Colors.black,
                              child: TextField(
                                controller: fnameController,
                                  style: TextStyle(fontSize: 12),
                                  decoration: InputDecoration(
                                    hintText: 'First Name',
                                    hintStyle: TextStyle(
                                        color: const Color.fromARGB(
                                            255, 81, 81, 81),
                                        fontSize: 12),
                                    border: OutlineInputBorder(),
                                  ))),
                          Container(
                              height: 30,
                              width: swidth / 2 - 30,
                              color: Colors.black,
                              child: TextField(
                                controller: lnameController,
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
                              width: swidth / 2 - 30,
                              color: Colors.black,
                              child: TextField(
                                controller: emailController,
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
                              width: swidth / 2 - 30,
                              color: Colors.black,
                              child: TextField(
                                controller: phoneController,
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
                        width: swidth - 20,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 0, 0,
                              0), // Background color of the dropdown menu
                          border: Border.all(
                              color: Colors.grey,
                              width: 1.0), // Border color and width
                          borderRadius: BorderRadius.circular(
                              5.0), // Optional: Rounded corners
                        ),
                        child: DropdownButton<String>(
        value: selectedValue,
        hint: Text(
          'Select a service',
          style: TextStyle(
              fontSize: 12, color: Color.fromARGB(255, 81, 81, 81)),
        ),
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue;
            switch (newValue) {
              case 'Mobile Application Development':
                new1 = 'Mobile Application Development';
                break;
              case 'Web Application Development':
                new1 = 'Web Application Development';
                break;
              case 'UI/UX Development':
                new1 = 'UI/UX Development';
                break;
              default:
                new1 = 'Other';
            }
          });
          
        },
        items: _items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(
                  fontSize: 12, color: Color.fromARGB(255, 188, 188, 188)),
            ),
          );
        }).toList(),
        dropdownColor: const Color.fromARGB(255, 0, 0, 0),
        style: TextStyle(
            fontSize: 12,
            color: Color.fromARGB(255, 217, 217, 217)),
      ),
    
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                          color: Colors.black,
                          height: 110,
                          width: swidth - 30,
                          child: TextField(
                            controller: messagecontroller,
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
                        onPressed: () {
                          firestoreService.addNote(
                                fnameController.text,
                                lnameController.text,
                                emailController.text,
                                phoneController.text,
                                new1,
                                messagecontroller.text
                                 );
                            setState(() {
                              selectedValue =null;
                            });
                            fnameController.clear();
                                lnameController.clear();
                                emailController.clear();
                                phoneController.clear();
                                messagecontroller.clear();
                          },
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
                // Optional spacing between containers
                SizedBox(
                  height: 10,
                ),
                // Right Container
                Container(
                  width: swidth - 20,

                  // Adjust the width as needed
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
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
                        height: 10,
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
              ],
            ),
          ),
        ),
      );
    }
  }
}
