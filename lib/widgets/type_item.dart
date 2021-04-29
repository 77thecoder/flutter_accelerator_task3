import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task3/themes/app_theme.dart';

class TypeItem extends StatelessWidget {
  final String label;
  final Color borderColor;
  final bool selected;
  final bool border;
  final Color backgroundColor;
  final Color textColor;

  const TypeItem({
    Key? key,
    required this.label,
    required this.borderColor,
    required this.selected,
    required this.border,
    required this.backgroundColor,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: selected ? backgroundColor.withOpacity(0.15) : backgroundColor.withOpacity(0.08),
        border: border
            ? Border.all(
                color: border
                    ? borderColor.withOpacity(0.3)
                    : backgroundColor.withOpacity(0), //TODO you can pass null as param, so no border will be used
              )
            : null,
        borderRadius: BorderRadius.circular(68),
      ),
      child: Text(
        label,
        style: selected
            ? Theme.of(context)
                .textTheme
                .bodyText2! //TODO it's possible to set bodyText2 as null, and you will get crash here.
                .copyWith(color: AppColors.violet500)
            : Theme.of(context).textTheme.bodyText2!.copyWith(
                  color: AppColors.black.withOpacity(0.38),
                ),
      ),
    );
  }
}
