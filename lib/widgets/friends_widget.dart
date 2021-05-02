import 'package:flutter/material.dart';
import 'package:task3/themes/app_theme.dart';
import 'package:task3/widgets/custom_separator.dart';
import 'package:task3/widgets/friend_item.dart';

const List<FriendItem> friends = [
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

class Friends extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        separatorBuilder: (BuildContext context, int index) =>
            CustomSeparator(color: AppColors.black.withOpacity(0.08),),
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
}
