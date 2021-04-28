import 'package:flutter/material.dart';
import 'package:task3/themes/app_theme.dart';

class IconDelete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.white),
        color: AppColors.red200
      ),
      child: Icon(Icons.close, color: AppColors.white, size: 8,),
    );
  }
}
