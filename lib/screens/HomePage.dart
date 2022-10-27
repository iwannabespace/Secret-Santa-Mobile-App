import 'package:flutter/material.dart';
import 'package:project/screens/gift_screen.dart';
import 'package:project/classes/card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
   return Column(
     children: [
       Expanded(
         flex: 76,
         //AppBar, kullanicilar, baslik
         child: Container(
           color: Colors.white,
           //AppBar ve başlık
           child: Column(
             children: [
               //AppBar menü
               Expanded(
                 flex: 37,
                 child: Container(
                   color: Colors.white,
                   child: Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 4.0),
                         child: IconButton(
                             onPressed: (){},
                             icon: Icon(Icons.menu)),
                       ),
                       Spacer(),
                       //Sağ üst Kullanıcı profil
                       Padding(
                         padding: const EdgeInsets.only(right: 16.0),
                         child: Stack(
                           children: [
                             Padding(
                               padding: const EdgeInsets.only(left: 25.0),
                               child: CircleAvatar(
                                 // child: Image.asset("alperen.jpg"),
                                 backgroundColor: Colors.pink,
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 50.0),
                               child: CircleAvatar(
                                 // child: Image.asset("alperen.jpg"),
                                 backgroundColor: Colors.cyan,
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 75.0),
                               child: CircleAvatar(
                                 // child: Image.asset("nahit.jpg"),
                                 backgroundColor: Colors.red,
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 100.0),
                               child: CircleAvatar(
                                 // child: Image.asset("yunus.png"),
                                 backgroundColor: Colors.yellow,
                               ),
                             ),
                           ],
                         ),
                       ),
                     ],
                   ),
                 ),
               ),
               Expanded(
                 flex: 63,
                 child: Padding(
                   padding: const EdgeInsets.only(bottom: 20.0,right: 20,left: 26),
                   child: Container(
                     color: Colors.white,
                     child: Center(
                       child: Text("Secret Santa in Arounda",
                           style: TextStyle(
                               fontWeight: FontWeight.w500,fontSize: 55)
                       ),
                     ),
                   ),
                 ),
               ),
             ],
           ),
         ),
       ),
       //Ara bar
       Expanded(
         flex: 20,
         child: Padding(
           padding: const EdgeInsets.only(left: 32,right: 32,top: 8,bottom: 8),
           child: Container(
             decoration: BoxDecoration(
               color: Color.fromARGB(31, 92, 60, 187),
               borderRadius: BorderRadius.circular(15),
             ),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Expanded(
                   child: Row(
                     children: [
                       Expanded(
                         flex:10,
                         child: Padding(
                           padding: const EdgeInsets.all(3.0),
                           child: Container(
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(15),
                                 boxShadow: [
                                   BoxShadow(color: Colors.grey.withOpacity(0.1),
                                     spreadRadius: 5,
                                     blurRadius: 5,
                                   )
                                 ]
                             ),
                             child: Row(
                               children: [
                                 Center(child: Padding(
                                   padding: const EdgeInsets.only(left: 8.0),
                                   child: Text("All Cards",style: TextStyle(fontWeight: FontWeight.bold),),
                                 )),
                                 Spacer(),
                                 Padding(
                                   padding: const EdgeInsets.only(right: 18.0),
                                   child: Container(
                                     height: 30,
                                       child: Center(child: Text("17",style: TextStyle(color: Colors.white,fontSize: 8,fontWeight: FontWeight.bold),)),
                                       decoration: ShapeDecoration(
                                           shape: CircleBorder(
                                               side: BorderSide(
                                                   width: 6,
                                                   style: BorderStyle.none,
                                               )
                                           ),
                                           color: Colors.black,
                                       ),
                                   ),
                                 )
                               ],
                             ),
                           ),
                         ),
                       ),
                       Expanded(
                         flex:10,
                         child: Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: Container(
                             decoration: BoxDecoration(
                               color: Colors.transparent,
                               borderRadius: BorderRadius.circular(15),
                             ),
                             child: Center(child: Text("Left",style: TextStyle(fontWeight: FontWeight.bold),)),
                           ),
                         ),
                       ),
                       Expanded(
                         flex:10,
                         child: Padding(
                           padding: const EdgeInsets.all(4.0),
                           child: Container(
                             decoration: BoxDecoration(
                               color: Colors.transparent,
                               borderRadius: BorderRadius.circular(15),
                             ),
                             child: Center(child: Text("Taken",style: TextStyle(fontWeight: FontWeight.bold),)),
                           ),
                         ),
                       ),
                     ],
                   ),
                 )
               ],
             ),
           ),
         ),
       ),
       Expanded(
         flex: 104,
         child: Container(
           color: Colors.white,
           child: ListView(
             padding: EdgeInsets.symmetric(horizontal: 48),
             children: [
               CardField(
                 member: "Alperen",
                 cardName: "Selamlar",
               ),
               CardField(
                 member: "Nahit",
                 cardName: "Selamlar",
               ),
               CardField(
                 member: "Ertuch",
                 cardName: "Selamlar",
               ),
               CardField(
                 member: "Yunus",
                 cardName: "Selamlar",
               ),
               CardField(
                 member: "HOOOOG RİDERR",
                 cardName: "Selamlar",
               ),
             ],
           ),
         ),
       ),
     ],
   );
  }
}

