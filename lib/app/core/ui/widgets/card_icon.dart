import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';

class CardIcon extends StatelessWidget {
  
  String label;
  String dirImage;
  final VoidCallback onPressed;

  CardIcon({required this.label, required this.dirImage, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                height: 62,
                width: MediaQuery.of(context).size.width - 32,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: UiConfig.colorScheme.primaryContainer,
                ),
                child: Text(label,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: UiConfig.colorScheme.primary)),
              ),
              Transform.translate(
                offset: Offset(MediaQuery.of(context).size.width - 101, -5),
                child: CircleAvatar(
                  radius: 35,
                  backgroundColor: UiConfig.colorScheme.surface,
                  child: CircleAvatar(
                    backgroundColor: UiConfig.colorScheme.primaryContainer,
                    radius: 30,
                    child: Image.asset(dirImage),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
