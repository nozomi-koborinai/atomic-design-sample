import 'package:flutter/material.dart';

class MusicExplanation extends StatelessWidget {
  const MusicExplanation(
      {required this.musicName, required this.artistName, super.key});
  final String musicName;
  final String artistName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(musicName, style: TextStyle(color: Colors.grey[700])),
        Text(artistName, style: TextStyle(color: Colors.grey[300])),
      ],
    );
  }
}
