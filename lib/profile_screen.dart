import 'package:flutter/material.dart';
import 'profile_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/presh.jpg'),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Essien Precious',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Flutter Developer',
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
               SizedBox(height: 20),
                ProfileCard(
                  heading: 'Bio',
                  text: [ "I'm a passionate junior developer on a journey to master the art of mobile development. Starting with curiosity and a love for building things, I’ve been steadily growing my skills in Flutter and Dart, turning ideas into interactive apps."]
                 ),                
              SizedBox(height: 8),
              ProfileCard(
                heading: 'Skills',
                icon: [Icon(Icons.code, size: 28, color: Colors.blue,), Icon(Icons.bug_report, size: 26, color: Colors.blue,), FlutterLogo(size: 30), Icon(Icons.code, size: 29, color: Colors.blue,)],
                text: [ ' Dart',' Debugging','Flutter', 'Web Development'],
              ),
              ProfileCard(
                heading: 'Contact Information',
                icon: [Icon(Icons.email, size: 28, color: Colors.blue), Icon(Icons.person, size: 26, color: Colors.blue), Icon(Icons.facebook, size: 30, color: Colors.blue), Icon(Icons.code, size: 30, color: Colors.blue),],
                text: ['preciousgoodtime@gmail.com','08089408797','Eti-ini precious', 'Miss-presh'],
              ),
            ]
              )
              
            ),
          ),
        ),
      ),
      );
  }
}