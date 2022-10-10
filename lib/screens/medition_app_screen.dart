import 'package:flutter/material.dart';
import 'package:medition_app/model/item_model.dart';

class MeditionScreen extends StatefulWidget {
  @override
  State<MeditionScreen> createState() => _MeditionScreenState();
}

class _MeditionScreenState extends State<MeditionScreen> {
  
  final Item item = Item(name: "Forest", audioPath: "medition_audio/forest.mp3", imagePath: "meditions_images/forest.jpeg");
  final Item item1 = Item(name: "Night", audioPath: "medition_audio/night.mp3", imagePath: "meditions_images/night.jpeg");
  final Item item2 = Item(name: "Ocean", audioPath: "medition_audio/ocean.mp3", imagePath: "meditions_images/ocean.jpeg");
  final Item item3 = Item(name: "Waterwall", audioPath: "medition_audio/waterwall.mp3",
      imagePath: "meditions_images/waterwall.jpeg");
  final Item item4 = Item(name: "Wid", audioPath: "medition_audio/wind.mp3", imagePath: "meditions_images/wind.jpeg");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(),
      ),
    );
  }
}
