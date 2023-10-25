import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';

class TextFieldOutlineNumber extends StatelessWidget {
  final String? hintText;
  final String label;

  const TextFieldOutlineNumber({this.hintText, required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: 8.0, right: 8.0, bottom: 2.0, top: 6.0),
          child: SizedBox(
            child: Text(
              label,
              style: const TextStyle(color: Color(0xFF403E3E), fontSize: 14),
            ),
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white), // Cor da borda branca
            borderRadius: BorderRadius.circular(10.0), // Borda arredondada
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10.0), 
                fillColor: UiConfig.colorScheme.outline,
                filled: true, 
                border:
                    InputBorder.none, // Oculta a borda interna do TextFormField
              ),
            ),
          ),
        ),
      ],
    );
  }
}
