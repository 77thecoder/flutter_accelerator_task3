import 'package:flutter/material.dart';
import 'package:task3/widgets/media_item.dart';

class Medias extends StatelessWidget {
  final List<MediaItem> medias = [
    MediaItem(
      imageUrl:
          'https://unsplash.com/photos/Qbt4E245k50/download?force=true&w=640',
      width: 96,
      height: 96,
    ),
    MediaItem(
      imageUrl:
          'https://unsplash.com/photos/flPxTlU8Sxo/download?force=true&w=640',
      width: 96,
      height: 96,
    ),
    MediaItem(
      imageUrl:
          'https://unsplash.com/photos/Eplt_K-F4Vk/download?force=true&w=640',
      width: 96,
      height: 96,
    ),
    MediaItem(
      imageUrl:
          'https://unsplash.com/photos/zGyg1iqLdCo/download?force=true&w=640',
      width: 96,
      height: 96,
    ),
    MediaItem(
      imageUrl:
          'https://unsplash.com/photos/EzpvkSjAwRg/download?force=true&w=640',
      width: 96,
      height: 96,
    ),
    MediaItem(
      imageUrl:
          'https://unsplash.com/photos/idD9ofMGTK4/download?force=true&w=640',
      width: 96,
      height: 96,
    ),
    MediaItem(
      imageUrl:
          'https://unsplash.com/photos/VOEAw_5Epn4/download?force=true&w=640',
      width: 96,
      height: 96,
    ),
    MediaItem(
      imageUrl:
          'https://unsplash.com/photos/FI5elWvh1G8/download?force=true&w=640',
      width: 96,
      height: 96,
    ),
    MediaItem(
      imageUrl:
          'https://unsplash.com/photos/sn5ACLqb7lQ/download?force=true&w=640',
      width: 96,
      height: 96,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: medias.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          crossAxisCount: 3,
        ),
        itemBuilder: (BuildContext context, int index) {
          return medias[index];
        },
      ),
    );
  }
}
