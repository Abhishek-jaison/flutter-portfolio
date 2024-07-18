import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/buttons/elevated_button.dart';
import 'package:portfolio/buttons/icon_button.dart';
import 'package:portfolio/components/counter.dart';
import 'package:portfolio/components/links.dart';
import 'package:portfolio/functions/nav_item.dart';
import 'package:portfolio/widgets/contact_screen.dart';
import 'package:portfolio/widgets/resume_screen.dart';
import 'package:portfolio/widgets/services_screen.dart';
import 'package:portfolio/widgets/work_screen.dart';
import '../widgets/home_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
      Color mycolor = Color.fromARGB(255, 2, 216, 138);

  int _selectedIndex = 4;
  late double screenWidth;
  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _getSelectedWidget() {
    switch (_selectedIndex) {
      case 0:
        return HomeScreenContent();
      case 1:
        return ServicesScreen();
      case 2:
        return WorkScreen();
      case 3:
        return ResumeScreen();
      case 4:
        return UserForm();

      default:
        return HomeScreenContent();
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth >= 800) {
      return Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(44.0),
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0, // Remove the shadow
              flexibleSpace: Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                      maxWidth: 800), // Set the desired width here
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
                            ElevatedButton(
                              onPressed: () => _onTabTapped(4),
                              child: Text(
                                'Hire Me',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0),
                                    fontSize: 16),
                              ),
                              style: ButtonStyle(
                                  backgroundColor:
                                      WidgetStateProperty.all<Color>(
                                          Color.fromARGB(255, 2, 216, 138)),
                                  side: WidgetStateProperty.all<BorderSide>(
                                    BorderSide(
                                        color: Color.fromARGB(255, 2, 216, 138),
                                        width: 2.0),
                                  ),
                                  shape: WidgetStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14),
                                  ))),
                            ),
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
              child: AnimatedSwitcher(
                duration: Duration(milliseconds: 200),
                child: _getSelectedWidget(),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return FadeTransition(opacity: animation, child: child);
                },
              ),
            ),
          ));
    } else {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'Abhishek',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
          actions: [
            CustomElevatedButton(
              text: 'Hire me',
              onPressed: () {},
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 27, 27, 27),
                  ),
                  child: Icon(Icons.favorite, color: mycolor)),
              ListTile(
                leading: Icon(IconlyBold.home),
                title: Text('Home'),
                onTap: () {
                  _onTabTapped(0);
                  Navigator.pop(context);


                }
                 
                  
                  // Handle the home tap here
                   // Close the drawer
                
              ),
              ListTile(
                leading: Icon(IconlyBold.setting),
                title: Text('Services'),
                onTap: () {
                  
                 
                  _onTabTapped(1);
                  Navigator.pop(context);
                  // Handle the settings tap here
                  // Close the drawer
                },
              ),
              ListTile(
                leading: Icon(IconlyBold.work),
                title: Text('Work'),
                onTap: () {_onTabTapped(2);
                  // Handle the contact tap here
                  Navigator.pop(context); // Close the drawer
                },
              ),
              ListTile(
                leading: Icon(IconlyBold.document),
                title: Text('Resume'),
                onTap: () {
                  _onTabTapped(3);
                  // Handle the contact tap here
                  Navigator.pop(context); // Close the drawer
                },
              ),
              ListTile(
                leading: Icon(IconlyBold.message),
                title: Text('Contact'),
                onTap: () {
                  _onTabTapped(4);
                  // Handle the contact tap here
                  Navigator.pop(context); // Close the drawer
                },
              ),
            ],
          ),
        ),
        body: _getSelectedWidget(),
      );
    }
  }
}
