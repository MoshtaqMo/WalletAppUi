import 'package:flutter/material.dart';

class BankList extends StatelessWidget {
  final String imagePath;
  final String name;
  const BankList({super.key, required this.imagePath, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
                height: 120,
                width: 130,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(40)
                ),
                child:Image.asset(imagePath),
              ),
              SizedBox(height: 10,),
              Text(name,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),)
      ]
    );
  }
}