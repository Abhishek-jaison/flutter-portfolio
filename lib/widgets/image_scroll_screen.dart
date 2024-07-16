import 'package:flutter/material.dart';

class ImageScrollScreen extends StatefulWidget {
  @override
  _ImageScrollScreenState createState() => _ImageScrollScreenState();
}

class _ImageScrollScreenState extends State<ImageScrollScreen> {
  int _selectedIndex = 0;

  final List<String> _imagePaths = [
    'assets/images/image1.png',
    'assets/images/image2.png',
    'assets/images/image3.png',
    // Add all your image paths here
  ];

  final List<String> _descriptions = [
    'Description for Image 1',
    'Description for Image 2',
    'Description for Image 3',
    // Add all your descriptions here
  ];

  void _onImageTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Scroll Example'),
      ),
      body: Column(
        children: [
          Container(
            height: 200.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _imagePaths.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => _onImageTap(index),
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    width: 150.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: _selectedIndex == index ? Colors.blue : Colors.grey,
                        width: 2.0,
                      ),
                    ),
                    child: Image.asset(
                      _imagePaths[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            _descriptions[_selectedIndex],
            style: TextStyle(fontSize: 18.0),
          ),
        ],
      ),
    );
  }
}
