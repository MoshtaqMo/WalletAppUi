import 'package:flutter/material.dart';

class MyList extends StatelessWidget {
  final String iconpath;
  final String icontext;
  void Function() onTap;
   MyList({super.key, required this.iconpath, required this.icontext,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
                  spacing: 7,
                  children: [ InkWell(
                    onTap: onTap,
                    child:
                      Container
                                  (
                      padding: EdgeInsets.all(7),
                      height: 80,
                      width: 120,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 8,
                            spreadRadius: 2,
                            
                          )
                        ],
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(child: Image.asset(iconpath,)),
                                  ),
                    
                  ),

                Text(icontext, style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                ]);
  }
}