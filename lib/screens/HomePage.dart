import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
   return Column(
     children: [
       Expanded(
         flex: 40,
         child: Container(
           color: Colors.red,
           child: Column(
             children: [
               //AppBar kısmı
               Expanded(
                 flex: 40,
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
                       Stack(
                         children: [
                           CircleAvatar(
                             child: Image.asset("alperen.jpg"),
                             backgroundColor: Colors.transparent,
                           ),
                           CircleAvatar(
                             // child: Image.asset("alperen.jpg"),
                             // backgroundColor: Colors.cyan,
                           ),
                           CircleAvatar(
                             // child: Image.asset("nahit.jpg"),
                             // backgroundColor: Colors.red,
                           ),
                           CircleAvatar(
                             // child: Image.asset("yunus.png"),
                             // backgroundColor: Colors.yellow,
                           ),
                         ],
                       ),
                     ],
                   ),
                 ),
               ),
               Expanded(
                 flex: 60,
                 child: Container(
                 ),
               ),
             ],
           ),
         ),
       ),
       Expanded(
         flex: 60,
         child: Container(
           color: Colors.yellow,
         ),
       ),
     ],
   );
  }
}