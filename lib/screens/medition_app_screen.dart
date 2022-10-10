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
        audioPath: "medition_audio/waterfall.mp3",
        imagePath: "meditions_images/waterfall.jpeg"),
    ItemMeditiion(
        name: "Wind",
        audioPath: "medition_audio/wind.mp3",
        imagePath: "meditions_images/wind.jpeg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            itemCount: meditions.length,
            itemBuilder: (context, index){

          return Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              image: DecorationImage(
                  fit: BoxFit.fitWidth,image: AssetImage(meditions[index].imagePath))
            ),
            child: ListTile(
              title: Text(meditions[index].name),
              leading: IconButton(icon: Icon(Icons.play_circle),
              onPressed: (){}),

            ),
          );
        }),
      ),
    );
  }
}
