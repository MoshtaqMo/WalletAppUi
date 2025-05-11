import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletappui/send_money.dart';
import 'package:walletappui/util/my_card.dart';
import 'package:walletappui/util/my_list.dart';
import 'package:walletappui/util/my_list2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(text: TextSpan(children: [
                  TextSpan(
                    text: "My",style: TextStyle(color: Colors.black , fontSize: 20,fontWeight: FontWeight.bold),
        
                  ),
                  TextSpan(
                    text: " Cards",style: TextStyle(color: Colors.black , fontSize: 17),
                  ),
                ])),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 228, 210, 210),
                    shape: BoxShape.circle
                  ),
                  child:    IconButton(
                  color: Colors.black,
                  onPressed: (){}, icon: Icon(Icons.add)),
                ),
             
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: 250,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: [
                  MyCard(cardNumber: '**** **** **** 1234', expiryDate: '12/25', cardType: 'Visa', cardBalance: 'Balance', cardColor: Colors.blue, money: '\$ 20,000',),
                  MyCard(cardNumber: '**** **** **** 5435', expiryDate: '04/26', cardType: 'Master', cardBalance: 'Balance', cardColor: Colors.lightGreen, money: '\$43,000',),
                  MyCard(cardNumber: '**** **** **** 4654', expiryDate: '05/30', cardType: 'Visa', cardBalance: 'Balance', cardColor: Colors.purple, money: '1,000,000',),
                  MyCard(cardNumber:'**** **** **** 8656', expiryDate: '01/29', cardType: 'Master', cardBalance: 'Balance', cardColor: Colors.deepPurple, money: '500,000',),
                  
                ],
              ),
            ),
            SizedBox(height: 10,),
            SmoothPageIndicator(controller: _controller, count: 4),
            SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MyList(iconpath: 'icons/transfer.png', icontext: 'Send',onTap: (){  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => SendMoney()),
  );},),
                MyList(iconpath: 'icons/credit.png', icontext: 'Pay',onTap: (){},),
                MyList(iconpath: 'icons/bill.png', icontext: 'Bill',onTap: (){},),
                
              ],
            ),
            SizedBox(height: 35,),
            Expanded(
              
              child:  ListView(
             children: [
               MyList2(iconpath: "icons/statistics.png", title: "Statistics", suptitle: "Payments and incomes", icon: Icons.arrow_forward_ios),
               MyList2(iconpath: "icons/money.png", title: "Transfactions", suptitle: "Payments and incomes", icon: Icons.arrow_forward_ios),
            
             ]
           ),)
            

          ],
        ),
      )),

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Colors.deepPurple,
        items: [
        Icon(Icons.home),
        Icon(Icons.favorite_border_outlined),
        Icon(Icons.settings),
      ]),
    );
  }
}