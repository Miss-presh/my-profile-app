import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    required this.heading,
    this.icon,
  required  this.text, 
  });

  final List<Widget>? icon;
  final List<String> text;
  final String heading;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 8,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 12),
          Column(
            spacing: 8,
            children: List.generate(text.length, (index){
            final bodyText = text[index];
          
            return      Row(
            children: [
       if(icon != null)...[  icon![index],
              const SizedBox(width: 12),]  ,   
              Expanded(
                child: Text(
                  bodyText,
                  style: const TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ],
          );
     
          }),)
        ],
      ),
    );
  }
  }