import 'package:flutter/material.dart';
import 'package:flutter_custom_icons/flutter_custom_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: "Sans Serif",
      ),

      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "My Profile",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbZk12AUW8hfmy9CyR80SHvwaLV5IUomIC1w&s",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Mizanur Rahman Zoy",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Flutter Beginner and future App Developer",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    """I love building mobile apps with Flutter. 
          Learning new things every day and
          enjoying the journey!""",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 10),
                  // Location Card
                  Cards(
                    title: "Location",
                    subtitle: "Dhaka, Bangladesh",
                    icon: Icons.location_on,
                    color: Colors.deepPurple,
                  ),
                  // Education Card
                  Cards(
                    title: "Education",
                    subtitle: "BSc in CSE \n City University",
                    icon: Icons.school_rounded,
                    color: Colors.green,
                  ),
                  // Skills Card
                  Cards(
                    title: "Skills",
                    subtitle:
                        "Flutter, Dart, Firebase, Git, \n Rest API, HTML, CSS",
                    icon: Icons.code_outlined,
                    color: Colors.blue,
                  ),
                  Text(
                    "Connect with Me",
                    style: TextStyle(fontSize: 16, fontWeight: .w700),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: .spaceAround,
                    children: [
                      Column(
                        children: [
                          FaIcon(FontAwesomeIcons.facebook, size: 40, color: Colors.blue),
                          Text('Facebook'),
                        ],
                      ),
                      Column(
                        children: [
                          FaIcon(FontAwesomeIcons.github, size: 40, color: Colors.black,),
                          Text('Git Hub'),
                        ],
                      ),
                      Column(
                        children: [
                          FaIcon(FontAwesomeIcons.solidEnvelope, size: 40, color: Colors.red,),
                          Text('Email'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final IconData? icon;
  final Color? color;

  const Cards({super.key, this.title, this.subtitle, this.icon, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color!.withAlpha(30),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: Colors.white),
          ),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title ?? "",
                style: TextStyle(
                  color: color,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                subtitle ?? "",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
