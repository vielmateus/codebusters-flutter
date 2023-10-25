import 'package:flutter/material.dart';

class ButtonColorBright extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const ButtonColorBright(
      {required this.label, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 150,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 4,
              padding: const EdgeInsets.all(8.0),
              backgroundColor: const Color(0xffE4C3EE),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
            ),
            onPressed: onPressed,
            child: Text(
              label,
              style: const TextStyle(
                color: Color(0xff694A73),
                fontSize: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
