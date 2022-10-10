import 'package:flutter/material.dart';
import 'package:medition_app/model/item_model.dart';

class MeditionScreen extends StatefulWidget {
  @override
  State<MeditionScreen> createState() => _MeditionScreenState();
}

class _MeditionScreenState extends State<MeditionScreen> {

  final List<ItemMeditiion> meditions = [
    ItemMeditiion(
        name: "Forest",
        audioPath: "medition_audio/forest.mp3",
        imagePath: "meditions_images/forest.jpeg"),
    ItemMeditiion(
        name: "Night",
        audioPath: "medition_audio/night.mp3",
        imagePath: "meditions_images/night.jpeg"),
    ItemMeditiion(
        name: "Ocean",
        audioPath: "medition_audio/ocean.mp3",
        imagePath: "meditions_images/ocean.jpeg"),
    ItemMeditiion(
        name: "Waterwall",
        audioPath: "medition_audio/waterwall.mp3",
        imagePath: "meditions_images/waterwall.jpeg"),
    ItemMeditiion(
        name: "Wind",
        audioPath: "medition_audio/wind.mp3",
        imagePath: "meditions_images/wind.jpeg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          children: [
            Container(
              height: 50,
              color: Colors.orange,
              child: Text(meditions[0].name),
            ),
            Container(
              height: 50,
              color: Colors.green,
              child: Text(meditions[1].name),
            ),
            Container(
              height: 50,
              color: Colors.blue,
              child: Text(meditions[2].name),
            ),
          ],
        ),
      ),
    );
  }
}
