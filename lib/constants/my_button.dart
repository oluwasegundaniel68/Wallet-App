import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final String imagePath;
  final String buttonText;

  const MyButton({super.key,
    required this.imagePath,
    required this.buttonText
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              //color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  blurRadius: 30,
                  spreadRadius: 10,
                )
              ]
          ),
          child: Center(
            child: Image.asset(imagePath),
          ),
        ),
        SizedBox(height: 12,),
        Text(
          buttonText,
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.grey[700]
          ),
        ),
      ],
    );
  }
}
