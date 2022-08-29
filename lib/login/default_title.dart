import 'package:flutter/material.dart';

class DefaultTitle extends StatelessWidget {
  final String title;
  final Color colortitle;
  final Color colorSubtitle;

  const DefaultTitle({
    Key? key,
    required this.title,
    required this.colortitle,
    required this.colorSubtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 40,
            color: colortitle,
          ),
        ),
      ],
    );
  }
}
