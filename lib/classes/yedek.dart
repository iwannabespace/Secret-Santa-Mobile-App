import 'package:flutter/cupertino.dart';



// class CardField extends StatelessWidget {
//   const CardField({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final members = [["alperen","Selamlar"],["Nahit","Merhabalar"]];
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           InkWell(
//             onTap: (){ Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => GiftScreen(),),
//             );},
//             child: Container(
//               height: 160,
//               width: 150,
//               decoration: BoxDecoration(
//                   color: Colors.black,
//                   borderRadius: BorderRadius.circular(20),
//                   gradient: LinearGradient(
//                       begin: Alignment.topLeft,
//                       end: Alignment.bottomRight,
//                       colors: [
//                         Colors.red,
//                         Colors.yellow,
//                       ]
//                   )
//               ),
//               child:
//               Padding(
//                 padding: const EdgeInsets.only(left: 16.0,bottom: 50),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           InkWell(
//             onTap: (){ Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => GiftScreen(),),
//             );},
//             child: Container(
//               height: 160,
//               width: 150,
//               decoration: BoxDecoration(
//                   color: Colors.black,
//                   borderRadius: BorderRadius.circular(20),
//                   gradient: LinearGradient(
//                       begin: Alignment.topRight,
//                       end: Alignment.bottomLeft,
//                       colors: [
//                         Colors.red,
//                         Colors.yellow,
//                       ]
//                   )
//               ),
//               child:
//               Padding(
//                 padding: const EdgeInsets.only(left: 16.0,bottom: 50),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(widget.member,style: TextStyle(color: Colors.white,fontSize: 10),),
//                     SizedBox(height: 5,),
//                     Text(widget.cardName,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }