import 'package:flutter/material.dart';

class ImageScrollScreen extends StatefulWidget {
  @override
  _ImageScrollScreenState createState() => _ImageScrollScreenState();
}

class _ImageScrollScreenState extends State<ImageScrollScreen> {
  int _selectedIndex = 0;

  final List<String> _imagePaths = [
    'images/chat_bot.png',
    'images/social_media.jpg',
    'images/weather_app.png',
    // Add all your image paths here
  ];

  final List<String> _descriptions = [
    'Description for Image 1',
    'Description for Image 2',
    'Description for Image 3',
    // Add all your descriptions here
  ];

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
                  Text(
                    _descriptions[_selectedIndex],
                    style: TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
              Container(
                height: 500,
                width: 400,
                child: PageView.builder(
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
