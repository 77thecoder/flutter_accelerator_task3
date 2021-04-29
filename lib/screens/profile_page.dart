import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:task3/themes/app_theme.dart';
import 'package:task3/widgets/button.dart';
import 'package:task3/widgets/friends_widget.dart';
import 'package:task3/widgets/medias.dart';
import 'package:task3/widgets/types_widget.dart';

//TODO const modifiers
class ProfilePage extends StatefulWidget {
  final String title;

  ProfilePage({Key? key, required this.title}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final String profileAvatar = 'https://unsplash.com/photos/BteCp6aq4GI/download?force=true&w=640';

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
          _buildProfileAvatar(), //TODO make widgets, as Types, Friends
          const SizedBox(height: 24),
          Divider(color: AppColors.black.withOpacity(0.08)), //TODO extract divider as widget
          const SizedBox(height: 12),
          Text('Select types', style: Theme.of(context).textTheme.subtitle1), //TODO Also can be widget
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
          SizedBox(height: 16),
          _buildButtons(), //TODO make widgets, as Types, Friends
        ],
      ),
    );
  }

  Widget _buildProfileAvatar() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center, //TODO Avoid redundant argument values.
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

  Widget _buildButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Container(
              width: 156,
              child: Button(
                text: 'DELETE',
                isIcon: false, //TODO redundant param
                icon: Icon(Icons.delete),
                borderColor: AppColors.violet500,
                textColor: AppColors.white,
                backgroundColor: AppColors.violet500,
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              width: 156,
              child: Button(
                text: 'ADD',
                isIcon: false,
                icon: Icon(Icons.add),
                borderColor: AppColors.black.withOpacity(0.12),
                textColor: AppColors.violet500,
                backgroundColor: AppColors.white,
              ),
            ),
          ],
        )
      ],
    );
  }
}
