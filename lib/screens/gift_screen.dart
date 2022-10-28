import 'package:flutter/material.dart';
import 'package:project/classes/AppConstants.dart';
import '../classes/card_page_custom_appbar.dart';

class GiftScreen extends StatefulWidget {
  const GiftScreen({Key? key}) : super(key: key);

  @override
  State<GiftScreen> createState() => _GiftScreenState();
}

class _GiftScreenState extends State<GiftScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      backgroundColor: AppConstants.secondaryColor,
    );
  }
}
