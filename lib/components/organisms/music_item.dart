import 'package:atomic_design_sample/components/molecules/music_explanation.dart';
import 'package:atomic_design_sample/components/molecules/neumorphic_icon_button.dart';
import 'package:flutter/material.dart';

class MusicItem extends StatelessWidget {
  const MusicItem(
      {required this.musicName, required this.artistName, super.key});
  final String musicName;
  final String artistName;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      MusicItem(musicName: musicName, artistName: artistName),
      NeumorphicIconButton(
        backColor: Colors.grey[300],
        icon: Icons.favorite,
        foreColor: Colors.pink[200],
        onPressed: () {},
      ),
    ]);
  }
}
