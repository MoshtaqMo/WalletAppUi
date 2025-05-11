import 'package:flutter/material.dart';
import 'package:walletappui/util/bank_list.dart';

class SendMoney extends StatelessWidget {
  const SendMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: (){Navigator.pop(context);},
                      icon:Icon(Icons.arrow_back),
                      
                      ), 
                    Icon(Icons.menu)],
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.topLeft,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Send",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: "Money",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Add your bank account",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),

                SizedBox(height: 20),

                Container(
                  padding: EdgeInsets.all(5),
                  height: 100,
                  width: 350,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 142, 226, 147),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "Why to add bank account?",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Without adding your bank \n account you are not able to \n send money.",
                          ),
                        ],
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Expanded(child: Image.asset("icons/conf.avif")),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),

                Container(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,

                    children: [
                      Row(
                        spacing: 10,
                        children: [
                          BankList(
                            imagePath: "icons/moneyb.png",
                            name: "CitiBank",
                          ),
                          BankList(imagePath: "icons/bank.png", name: "Mine"),
                          BankList(
                            imagePath: "icons/banking.png",
                            name: "Bank",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                spacing: 10,
                children: [
                  Padding(padding: EdgeInsets.only(left: 20),
                  child:Text("Select your Bank!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
),
                  
                  Padding(padding: EdgeInsets.only(left: 20,right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                                  height: 120,
                                  width: 130,
                                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 214, 241, 61),
                      borderRadius: BorderRadius.circular(40)
                                  ),
                                  child:Image.asset("icons/moneyb.png"),
                                ),
                                Column(
                                  children: [

                                    Text("CitiBank",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                    Text("****8776",style: TextStyle(fontSize: 17),)
                                  ],
                                ),
                                SizedBox(height: 40,),

                                Icon(Icons.arrow_forward),
                    ]
                  ),),Padding(padding: EdgeInsets.only(left: 20,right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                                  height: 120,
                                  width: 130,
                                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 214, 241, 61),
                      borderRadius: BorderRadius.circular(40)
                                  ),
                                  child:Image.asset("icons/moneyb.png"),
                                ),
                                Column(
                                  children: [

                                    Text("CitiBank",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                    Text("****8776",style: TextStyle(fontSize: 17),)
                                  ],
                                ),
                                SizedBox(height: 40,),

                                Icon(Icons.arrow_forward),
                    ]
                  ),),Padding(padding: EdgeInsets.only(left: 20,right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                                  height: 120,
                                  width: 130,
                                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 214, 241, 61),
                      borderRadius: BorderRadius.circular(40)
                                  ),
                                  child:Image.asset("icons/moneyb.png"),
                                ),
                                Column(
                                  children: [

                                    Text("CitiBank",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                                    Text("****8776",style: TextStyle(fontSize: 17),)
                                  ],
                                ),
                                SizedBox(height: 40,),

                                Icon(Icons.arrow_forward),
                    ]
                  ),),
                 


                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
