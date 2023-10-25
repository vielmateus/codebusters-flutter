import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';

class ButtonColorDark extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  
  const ButtonColorDark({required this.label, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(
          width: 150,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 4,
              padding: const EdgeInsets.all(8.0),
              backgroundColor: UiConfig.colorScheme.primary,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
            ),
            onPressed: onPressed,
            child: Text(
              label,
              style: TextStyle(
                color: UiConfig.colorScheme.surface,
                fontSize: 15,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
