import 'package:flutter/material.dart';
import 'package:universal_html/html.dart' as html;

class WorkScreen extends StatefulWidget {
  @override
  _WorkScreennState createState() => _WorkScreennState();
}

class _WorkScreennState extends State<WorkScreen> {

 void downloadResume() {
    final url = 'https://drive.google.com/file/d/1rfYrSTsMrfYfLhAhYPIuUUu1dPif74hV/view?usp=drive_link'; // Replace with the actual URL of your resume
    final anchor = html.AnchorElement(href: url)
      ..setAttribute('download', 'Abhishek_jaison_resume.pdf') // Replace with the desired file name
      ..setAttribute('target', '_blank') // Open in a new tab
      ..click();
  }

  int _selectedIndex = 0;
  late PageController _pageController;

  final List<String> _imagePaths = [
    'images/social_media.jpg',
    'images/chat_bot.png',
    'images/weather_app.png',
    // Add all your image paths here
  ];

  final List<Widget> _descriptions = [
    Container(
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 45,
            ),
            Text(
              '01',
              style: TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Social Media App',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'An application which can be used to post our own \ncontents to all the users loged into the app',
              style: TextStyle(fontWeight: FontWeight.w200, color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Flutter, Firebase, dart',
              style: TextStyle(
                  fontSize: 14, color: Color.fromARGB(255, 2, 216, 138)),
            ),
            SizedBox(
              height: 25,
            ),
            Divider(
              color: Colors.grey,
              thickness: .5,
            ),
            Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 28, 28, 28),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: IconButton(
                    onPressed: (){},
                    icon: Image.asset(
                      'images/github.png',
                      color: Colors.white,
                      height: 30,
                      width: 30,
                    ))),
          ],
        )),
    Container(
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 45,
            ),
            Text(
              '02',
              style: TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Chat Bot',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'An application which takes the imput prompt as string and returns the response form gemini in the application',
              style: TextStyle(fontWeight: FontWeight.w200, color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Flutter, Gemini api, dart',
              style: TextStyle(
                  fontSize: 14, color: Color.fromARGB(255, 2, 216, 138)),
            ),
            SizedBox(
              height: 25,
            ),
            Divider(
              color: Colors.grey,
              thickness: .5,
            ),
            Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 28, 28, 28),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'images/github.png',
                      color: Colors.white,
                      height: 30,
                      width: 30,
                    )))
          ],
        )),
    Container(
        width: 400,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 45,
            ),
            Text(
              '03',
              style: TextStyle(fontSize: 55, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Weather App',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'An application that displays the weather of that current city, along with the forecast for the next 24 Hour\'s',
              style: TextStyle(fontWeight: FontWeight.w200, color: Colors.grey),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Flutter, Weather api, Dart',
              style: TextStyle(
                  fontSize: 14, color: Color.fromARGB(255, 2, 216, 138)),
            ),
            SizedBox(
              height: 25,
            ),
            Divider(
              color: Colors.grey,
              thickness: .5,
            ),
            Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 28, 28, 28),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'images/github.png',
                      color: Colors.white,
                      height: 30,
                      width: 30,
                    )))
          ],
        )),

    // Add all your descriptions here
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _nextPage() {
    setState(() {
      if (_selectedIndex == _imagePaths.length - 1) {
      } else {
        _selectedIndex = (_selectedIndex + 1);
      }
    });
    _pageController.animateToPage(
      _selectedIndex,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  void _previousPage() {
    setState(() {
      if (_selectedIndex == 0) {
      } else {
        _selectedIndex = (_selectedIndex - 1);
      }
    });
    _pageController.animateToPage(
      _selectedIndex,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _descriptions[_selectedIndex],
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 2, 216, 138),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            size: 20,
                          ),
                          onPressed: _previousPage,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 35,
                        height: 35,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 2, 216, 138),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.arrow_forward,
                            size: 20,
                          ),
                          onPressed: _nextPage,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                height: 500,
                width: 400,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: _imagePaths.length,
                  onPageChanged: _onPageChanged,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      _imagePaths[index],
                      fit: BoxFit.contain,
                    );
                  },
                ),
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ],
      ),
    );
  }
}
