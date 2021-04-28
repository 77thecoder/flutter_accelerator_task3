import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:task3/themes/app_theme.dart';
import 'package:task3/widgets/button.dart';
import 'package:task3/widgets/friends_widget.dart';
import 'package:task3/widgets/medias.dart';
import 'package:task3/widgets/type_item.dart';
import 'package:task3/widgets/types_widget.dart';

class ProfilePage extends StatefulWidget {
  final String title;

  ProfilePage({Key? key, required this.title}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final String profileAvatar =
      'https://unsplash.com/photos/BteCp6aq4GI/download?force=true&w=640';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => print('pressed Back'),
        ),
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () => print('pressed Menu'),
          ),
        ],
      ),
      body: SafeArea(
        child: _buildBody(),
      ),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: ListView(
        children: [
          _buildProfileAvatar(),
          const SizedBox(height: 24),
          Divider(color: AppColors.black.withOpacity(0.08)),
          const SizedBox(height: 12),
          Text('Select types', style: Theme.of(context).textTheme.subtitle1),
          Types(),
          const SizedBox(height: 12),
          Divider(color: AppColors.black.withOpacity(0.08)),
          const SizedBox(height: 12),
          Text('Friends', style: Theme.of(context).textTheme.subtitle1),
          const SizedBox(height: 12),
          Friends(),
          const SizedBox(height: 18),
          Button(
            isIcon: true,
            icon: Icon(Icons.add),
            text: 'ADD FRIEND',
            borderColor: AppColors.black.withOpacity(0.12),
            backgroundColor: AppColors.white,
            textColor: AppColors.gray900,
          ),
          const SizedBox(height: 12),
          Divider(color: AppColors.black.withOpacity(0.08)),
          Text('My media', style: Theme.of(context).textTheme.subtitle1),
          const SizedBox(height: 18),
          Medias(),
        ],
      ),
    );
  }

  Widget _buildProfileAvatar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 118,
          height: 118,
          child: CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(profileAvatar),
          ),
        ),
        const SizedBox(height: 24),
        Text('Tiana Rosser', style: Theme.of(context).textTheme.subtitle1),
        Text('Developer', style: Theme.of(context).textTheme.caption),
      ],
    );
  }
}
