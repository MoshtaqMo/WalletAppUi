import 'package:flutter/material.dart';

class MyList2 extends StatelessWidget {
  final String iconpath;
  final String title;
  final String suptitle;
  final IconData icon;
   const MyList2({super.key, required this.iconpath, required this.title, required this.suptitle, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(bottom: 5),
    child: 
     Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container
                    (
                      padding: EdgeInsets.all(7),
                      height: 100,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.grey,
                        //     blurRadius: 8,
                        //     spreadRadius: 2,
                            
                        //   )
                        // ],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Image.asset(iconpath,)),
                    ),
                    Column(
                      children: [
                        Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        Text(suptitle, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                      ]
                    ),
                    Icon(icon)
      ]
    ),);
  }
}