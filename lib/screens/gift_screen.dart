import 'package:flutter/material.dart';
import 'package:project/classes/AppConstants.dart';
import 'package:project/classes/card_page_custom_appbar.dart';
import '../classes/gs_card_top.dart';
import '../classes/gs_card_bottom.dart';
import '../components/gs_top_card_view.dart';
import '../components/gs_bottom_card_view.dart';

class GiftScreen extends StatefulWidget {
  const GiftScreen({Key? key}) : super(key: key);

  @override
  State<GiftScreen> createState() => _GiftScreenState();
}

class _GiftScreenState extends State<GiftScreen> {
  List<GiftScreenCardTop> cardsTop = [
    GiftScreenCardTop(
      title: "You're Secret Santa For",
      subTitle: "Maddison Bill",
      color: Colors.red,
    ),
    GiftScreenCardTop(
      title: "You're Secret Santa For",
      subTitle: "Maddison Bill",
      color: Colors.purple,
    ),
    GiftScreenCardTop(
      title: "You're Secret Santa For",
      subTitle: "Maddison Bill",
      color: Colors.black,
    ),
    GiftScreenCardTop(
      title: "You're Secret Santa For",
      subTitle: "Maddison Bill",
      color: Colors.yellow,
    ),
    GiftScreenCardTop(
      title: "You're Secret Santa For",
      subTitle: "Maddison Bill",
      color: Colors.green,
    ),
  ];

  List<GiftScreenCardBottom> cardsBottom = [
    GiftScreenCardBottom(
      title: "Glass flower pot",
      subTitle: "Modern simple floral vase",
      colorIndicator: "Red colour",
      price: "Less than \$35",
      color: const Color.fromARGB(255, 191, 183, 234),
    ),
    GiftScreenCardBottom(
      title: "Scented candles",
      subTitle: "Long-lasting candle",
      colorIndicator: "Vanilla smell",
      price: "Less than \$22",
      color: const Color.fromARGB(255, 191, 183, 234),
    ),
    GiftScreenCardBottom(
      title: "Box of sweets",
      subTitle: "Chocolate cookies and candies",
      colorIndicator: "Kit Kat",
      price: "Less than \$15",
      color: const Color.fromARGB(255, 191, 183, 234),
    ),
    GiftScreenCardBottom(
      title: "Colorful doorbell",
      subTitle: "Modern looking doorbell",
      colorIndicator: "Colorful",
      price: "Less than \$20",
      color: const Color.fromARGB(255, 191, 183, 234),
    ),
    GiftScreenCardBottom(
      title: "Turkish carpet",
      subTitle: "Carpet from Turkey",
      colorIndicator: "Turkish",
      price: "Less than \$50",
      color: const Color.fromARGB(255, 191, 183, 234),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.secondaryColor,
      appBar: const CustomAppBar(titleText: "Back"),
      body: Column(
        children: [
          Expanded(
            flex: 325,
            child: Container(
              color: Colors.transparent,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: cardsTop.length,
                itemBuilder: (context, index) => GiftScreenCardTopContainer(
                  container_content: cardsTop[index],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 675,
            child: Container(
              decoration: const BoxDecoration(
                color: AppConstants.primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.elliptical(60, 50),
                  topRight: Radius.elliptical(60, 50),
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 20,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 30, top: 40, right: 30, bottom: 15),
                      child: Row(
                        children: [
                          const Flexible(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Wishlist",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.topRight,
                              child: TextButton(
                                onPressed: () {},
                                style: const ButtonStyle(
                                  overlayColor: MaterialStatePropertyAll(
                                    Color.fromARGB(100, 200, 200, 200),
                                  ),
                                ),
                                child: const Text(
                                  "See all",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 80,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: cardsBottom.length,
                      itemBuilder: (context, index) =>
                          GiftScreenCardBottomContainer(
                        containerContent: cardsBottom[index],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
