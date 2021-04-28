import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:task3/themes/app_theme.dart';
import 'package:task3/widgets/icon_delete.dart';

class MediaItem extends StatelessWidget {
  final String imageUrl;
  final double width;
  final double height;

  const MediaItem({
    Key? key,
    required this.imageUrl,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 96,
        height: 96,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: AppColors.white),
          image: DecorationImage(
            image: CachedNetworkImageProvider(imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Positioned(
        top: 8,
        right: 8,
        child: IconDelete(),
      ),
    ]);
  }
}
