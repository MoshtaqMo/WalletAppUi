import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String cardNumber;
  final String expiryDate;
  final String cardType;
  final String cardBalance;
  final Color cardColor;
  final String money;
  

  const MyCard({super.key, required this.cardNumber, required this.expiryDate, required this.cardType, required this.cardBalance, required this.cardColor, required this.money});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child:  Text(cardType,style: TextStyle(color: Colors.grey , fontSize: 25,),),
                        ),
                       Text(cardBalance,style: TextStyle(color: Colors.black , fontSize: 15),),
                      SizedBox(height: 10,),
                      Text(money,style: TextStyle(color: Colors.black , fontSize: 40),),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(cardNumber,style: TextStyle(color: Colors.black , fontSize: 20),),
                          Text(expiryDate,style: TextStyle(color: Colors.black , fontSize: 20),),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
    );
  }
}