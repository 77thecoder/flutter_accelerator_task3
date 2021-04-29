import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:task3/themes/app_theme.dart';

class FriendItem extends StatelessWidget {
  final String image;
  final String name;
  final String profession;

  const FriendItem({
    Key? key,
    required this.image,
    required this.name,
    required this.profession,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Container(
            //TODO use SizedBox to set size, not container
            width: 40,
            height: 40,
            child: CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(image),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: Theme.of(context).textTheme.subtitle1),
                Text(
                  profession,
                  style: Theme.of(context).textTheme.caption,
                )
              ],
            ),
          ),
          Icon(
            Icons.close,
            color: AppColors.red700,
          ),
        ],
      ),
    );
  }
}
