import 'package:flutter/material.dart';
import 'package:project/classes/AppConstants.dart';
import '../classes/gs_card_top.dart';

class GiftScreenCardTopContainer extends StatefulWidget {
  GiftScreenCardTopContainer({super.key, required this.container_content});

  GiftScreenCardTop container_content;

  @override
  State<GiftScreenCardTopContainer> createState() =>
      _GiftScreenCardTopContainerState();
}

class _GiftScreenCardTopContainerState
    extends State<GiftScreenCardTopContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 20, bottom: 30),
      child: InkWell(
        onTap: () {
          print("Clicked on me!");
        },
        splashColor: Colors.grey,
        borderRadius: const BorderRadius.all(Radius.circular(21)),
        child: Container(
          width: 360,
          decoration: BoxDecoration(
            color: widget.container_content.color,
            borderRadius: const BorderRadius.all(Radius.circular(21)),
          ),
          child: Column(
            children: [
              Flexible(
                flex: 45,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    widget.container_content.title,
                    style: const TextStyle(
                      color: Color.fromARGB(150, 255, 255, 255),
                      fontSize: 18,
                    ),
                    maxLines: 1,
                  ),
                ),
              ),
              Flexible(
                flex: 55,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    widget.container_content.subTitle,
                    style: const TextStyle(
                      color: AppConstants.primaryColor,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
