import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/data/activity/model/activity_model.dart';

class ActivityModelWidget extends StatelessWidget {
  final ActivityModel activityModel;

  const ActivityModelWidget({required this.activityModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(activityModel.activity),
        Row(
          children: [
            InkWell(
                onTap: () =>
                    Navigator.of(context).pushNamed('/newActivitePage'),
                child: Image.asset('assets/icons/icon_edit_one.png')),
            InkWell(
                onTap: () =>
                    Navigator.of(context).pushNamed('/newActivitePage'),
                child: Image.asset('assets/icons/icon_remove.png')),
          ],
        )
      ],
    );
  }
}
