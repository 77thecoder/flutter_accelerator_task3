import 'package:flutter/material.dart';
import 'package:task3/themes/app_theme.dart';
import 'package:task3/widgets/friend_item.dart';

class Friends extends StatelessWidget {
  final List<FriendItem> friends = [
    FriendItem(
      image:
          'https://unsplash.com/photos/P7yvmajPvkM/download?force=true&w=640',
      name: 'Corey George',
      profession: 'Developer',
    ),
    FriendItem(
      image:
          'https://unsplash.com/photos/FSsDeev6Ico/download?force=true&w=640',
      name: 'Ahmad Vetrovs',
      profession: 'Developer',
    ),
    FriendItem(
      image:
          'https://unsplash.com/photos/Ju--S80ezyU/download?force=true&w=640',
      name: 'Cristofer Workman',
      profession: 'Developer',
    ),
    FriendItem(
      image:
          'https://unsplash.com/photos/XttWKETqCCQ/download?force=true&w=640',
      name: 'Tiana Korsgaard',
      profession: 'Developer',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) =>
            _buildSeparator(context),
        shrinkWrap: true,
        // padding: EdgeInsets.symmetric(vertical: 10),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: friends[index],
          );
        },
        itemCount: friends.length,
      ),
    );
  }

  Widget _buildSeparator(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.78,
          child: Divider(
            color: AppColors.black.withOpacity(0.08),
          ),
        ),
      ],
    );
  }
}
