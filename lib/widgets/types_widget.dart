import 'package:flutter/material.dart';
import 'package:task3/themes/app_theme.dart';
import 'package:task3/widgets/type_item.dart';

//TODO I preffer to have word Widget in class name that extends Widget
//(or other, that helps to understand if class is Widget, not data class)
class Types extends StatefulWidget {
  //TODO Why it is Stateful, not Stateless
  @override
  _TypesState createState() => _TypesState();
}

class _TypesState extends State<Types> {
  //TODO move out of class and make const, not final
  final List<TypeItem> types = [
    TypeItem(
      label: 'Black',
      borderColor: AppColors.black,
      selected: false,
      border: false,
      backgroundColor: AppColors.black,
      textColor: AppColors.black,
    ),
    TypeItem(
      label: 'Bold',
      borderColor: AppColors.black,
      selected: false,
      border: false,
      backgroundColor: AppColors.black,
      textColor: AppColors.black,
    ),
    TypeItem(
      label: 'Medium',
      borderColor: AppColors.violet500,
      selected: true,
      border: true,
      backgroundColor: AppColors.violet500,
      textColor: AppColors.violet500,
    ),
    TypeItem(
      label: 'Regular',
      borderColor: AppColors.black,
      selected: false,
      border: false,
      backgroundColor: AppColors.black,
      textColor: AppColors.black,
    ),
    TypeItem(
      label: 'Light',
      borderColor: AppColors.black,
      selected: false,
      border: false,
      backgroundColor: AppColors.black,
      textColor: AppColors.black,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      //TODO use SizedBox
      height: 54,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 10),
        itemBuilder: (BuildContext context, int index) {
          return types[index];
        },
        itemCount: types.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
