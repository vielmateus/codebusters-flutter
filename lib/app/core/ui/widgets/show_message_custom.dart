import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/button_color_dark.dart';

showAlertDialog(BuildContext context, VoidCallback confirm) {

  Widget oneButton = ButtonColorDark(
    label: 'Sim',
    onPressed: confirm,
  );
  
  AlertDialog alert = AlertDialog(
    title: const Text(''),
    content: const Text(''),
    actions: [
      oneButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}