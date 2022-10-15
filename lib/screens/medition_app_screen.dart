import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:just_audio/just_audio.dart';
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

  final AudioPlayer audioPlayer = AudioPlayer();
  int? playIndex;

  // Widget showIcon(int currentIndex){
  //   if(playIndex == currentIndex){
  //       return const FaIcon(FontAwesomeIcons.stop);
  //   } else {
  //   return const FaIcon(FontAwesomeIcons.play);
  //
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            itemCount: meditions.length,
            itemBuilder: (context, index) {
              return Container(
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage(meditions[index].imagePath))),
                child: ListTile(
                  title: Text(meditions[index].name),
                  leading: IconButton(
                      icon: playIndex == index
                          ? const FaIcon(FontAwesomeIcons.stop)
                          : const FaIcon(FontAwesomeIcons.play),
                      onPressed: () async {
                        if (playIndex == index) {
                          setState(() {
                            playIndex = null;
                            audioPlayer.stop();
                          });
                        } else {
                          try {
                            await audioPlayer
                                .setAsset(meditions[index].audioPath)
                                .catchError((onError) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: Colors.red.withOpacity(0.5),
                                  content: const Text("Ошибка произведениея"),
                                ),
                              );
                            });
                            audioPlayer.play();

                            setState(() {
                              playIndex = index;
                            });
                          } catch (error) {
                            print(error);
                          }
                        }
                      }),
                ),
              );
            }),
      ),
    );
  }
}
