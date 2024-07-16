import 'package:flutter/material.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('About me',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
        SizedBox(height: 30,),
        Text('I am a passionate and dedicated developer committed to continuously learning and applying new technologies to create innovative solutions',style: TextStyle(fontWeight: FontWeight.w100,fontSize: 12,color: Colors.grey),),
        
        SizedBox(height: 45,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Name',style: TextStyle(fontWeight: FontWeight.w100,fontSize: 11,color: Colors.grey),),
                    
                    Text('  Abhishek Jaison N'),
                  ],
                ),
                SizedBox(height: 15,),
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Experience',style: TextStyle(fontWeight: FontWeight.w100,fontSize: 11,color: Colors.grey),),
                    Text('  1 Year'),
                  ],
                ),SizedBox(height: 15,),
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Nationality',style: TextStyle(fontWeight: FontWeight.w100,fontSize: 11,color: Colors.grey),),
                    Text('  Indian'),
                  ],
                ),SizedBox(height: 15,),
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Freelance',style: TextStyle(fontWeight: FontWeight.w100,fontSize: 11,color: Colors.grey),),
                    Text('  Available'),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Row(mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   Text('Phone',style: TextStyle(fontWeight: FontWeight.w100,fontSize: 11,color: Colors.grey),),
                    Text('  (+91) 87147 26501'),
                 ],
               ),SizedBox(height: 15,),
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Email',style: TextStyle(fontWeight: FontWeight.w100,fontSize: 11,color: Colors.grey),),
                    Text('  abhishekjaison04@gmail.com'),
                  ],
                ),SizedBox(height: 15,),
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Languages',style: TextStyle(fontWeight: FontWeight.w100,fontSize: 11,color: Colors.grey),),
                    Text('  English, Malayalam' ),
                  ],
                ),
               
              ],
              
            ),
          ],
        )
      ],
    );
  }
}