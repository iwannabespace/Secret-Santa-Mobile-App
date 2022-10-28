import 'package:flutter/material.dart';
import 'package:project/components/bottom_card_view.dart';
import 'package:project/screens/gift_screen.dart';
import '../classes/Cards.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    List<CardsItem> cards = [
      CardsItem(title: "Alperen", subTitle: "HOOOG RİDER",color: Colors.deepOrange),
      CardsItem(title: "Nahit", subTitle: "HOOOG RİDER",color: Colors.red),
      CardsItem(title: "Ertuch", subTitle: "HOOOG RİDER",color: Colors.blue),
      CardsItem(title: "Yunus", subTitle: "HOOOG RİDER",color: Colors.amber),
      CardsItem(title: "Edirne", subTitle: "KEŞAN ",color: Colors.indigo),
    ];
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
                                 backgroundImage: AssetImage("alperen.jpg"),
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 50.0),
                               child: CircleAvatar(
                                 backgroundImage: AssetImage("ertuch.jpg"),
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 75.0),
                               child: CircleAvatar(
                                 backgroundImage: AssetImage("nahit.jpg"),
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 100.0),
                               child: CircleAvatar(
                                 backgroundImage: AssetImage("yunus.png"),
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
                                 Expanded(
                                   flex: 68,
                                   child: Center(child: Text("All Cards",style: TextStyle(fontWeight: FontWeight.bold),)),
                                 ),
                                 Expanded(
                                   flex: 22,
                                   child: Container(
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
                                 ),
                                 Expanded(flex:10,child: SizedBox())
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
         child: GridView.builder(
           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: Checkbox.width,crossAxisSpacing: Checkbox.width,),
           itemCount: cards.length,
           shrinkWrap: true,
           itemBuilder:(context, index) {
             return BottomCardView(cu: cards[index],);
           },
           physics: BouncingScrollPhysics(),
           padding: EdgeInsets.all(30),
         ),
       ),
     ],
   );
  }
}

