import 'package:flutter/material.dart';

class CustomSeparator extends StatelessWidget {
  final Color color;

  const CustomSeparator({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.80,
          child: Divider(
            color: color,
          ),
        ),
      ],
    );
  }
}
