import 'package:flutter/material.dart';
import 'dart:io';
import '../screens/gift_screen.dart';



class CardField extends StatefulWidget {
  final String member;
  final String cardName;
  CardField({required this.member, required this.cardName});

  @override
  State<CardField> createState() => _CardFieldState(member, cardName);
}

class _CardFieldState extends State<CardField> {
  _CardFieldState(String member, String cardName);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){ Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GiftScreen(),),
            );},
            child: Container(
              height: 160,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.red,
                        Colors.yellow,
                      ]
                  )
              ),
              child:
              Padding(
                padding: const EdgeInsets.only(left: 16.0,bottom: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.member,style: TextStyle(color: Colors.white,fontSize: 10),),
                    SizedBox(height: 5,),
                    Text(widget.cardName,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){ Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GiftScreen(),),
            );},
            child: Container(
              height: 160,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.red,
                        Colors.yellow,
                      ]
                  )
              ),
              child:
              Padding(
                padding: const EdgeInsets.only(left: 16.0,bottom: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.member,style: TextStyle(color: Colors.white,fontSize: 10),),
                    SizedBox(height: 5,),
                    Text(widget.cardName,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}











