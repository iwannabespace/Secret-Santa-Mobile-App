import 'package:flutter/material.dart';
import 'package:project/classes/Cards.dart';
import 'package:project/screens/gift_screen.dart';
class BottomCardView extends StatefulWidget {
  // String? title;
  // String? subTitle;
  // Color? color;
  CardsItem? cu;
  BottomCardView({Key? key, required this.cu}) : super(key: key);

  @override
  State<BottomCardView> createState() => _BottomCardViewState();
}

class _BottomCardViewState extends State<BottomCardView> {
  @override
  Widget build(BuildContext context) {
    return InkWell(

      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => GiftScreen(),),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: widget.cu?.color,
            borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex:25,child: SizedBox()),
              Text(widget.cu?.title as String),
              Expanded(flex:3,child: SizedBox()),
              Text(widget.cu?.subTitle as String),
              Expanded(flex:72,child: SizedBox())
            ],
          ),
        ),
      ),
    );
  }
}
