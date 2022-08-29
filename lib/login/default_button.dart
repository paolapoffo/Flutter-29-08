import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final Widget? rota;
  final String buttonText;
  final double borderSize;
  final Function()? func;

  const DefaultButton({
    Key? key,
    this.rota,
    this.func,
    required this.buttonText,
    this.borderSize = 3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: func,
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        side: BorderSide(
          width: borderSize,
          color: Colors.white,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 75),
        child: Text(
          buttonText,
          style: const TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
