import 'package:flutter/material.dart';
import 'profile_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Profile App',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.blue[100],
      ),
      home: ProfileScreen(),
    );
  }
}





  
