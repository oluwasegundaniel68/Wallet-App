import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String imagePath;
  final String tileName;
  final String tileSubTitle;

  const MyListTile({super.key,
    required this.imagePath,
    required this.tileName,
    required this.tileSubTitle
  }
  );

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(12),
                height: 80,
                decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Image.asset(
                    imagePath
                ),
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(tileName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(tileSubTitle,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600],
                    ),),
                ],
              ),
            ],
          ),
          Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
