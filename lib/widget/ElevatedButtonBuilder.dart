import 'package:flutter/material.dart';

class ElevatedButtonBuilder extends StatelessWidget {
  final String buttonTitle;
  final VoidCallback? onPressed;

  const ElevatedButtonBuilder({Key? key, required this.buttonTitle, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Colors.amber),
        ),
        onPressed: onPressed,
        child: Text(buttonTitle));
  }
}