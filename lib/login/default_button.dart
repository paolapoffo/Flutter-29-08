import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final Widget? rota;
  final String buttonText;
  final double borderSize;
  final Widget? color;

  const DefaultButton({
    Key? key,
    this.rota,
    required this.buttonText,
    this.borderSize = 3, 
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        side: BorderSide(
          width: borderSize,
          color: Colors.white
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 75),
        child: Text(
          buttonText,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
