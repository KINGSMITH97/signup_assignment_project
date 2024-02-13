import 'package:debouncer_project/extensions/widget_extension.dart';
import 'package:debouncer_project/models/onboard_item.dart';
import 'package:flutter/material.dart';

class OnboardItemScreen extends StatelessWidget {
  const OnboardItemScreen({super.key, required this.onboardItem});
  final OnboardItem onboardItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 400,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(onboardItem.imageUrl)),
          ),
        ).paddingLR16,
        Text(
          onboardItem.title,
          style: TextStyle(
            fontSize: 24,
            color: Colors.green[600],
            fontWeight: FontWeight.w600,
          ),
        ).paddingTop32,
        Text(
          textAlign: TextAlign.center,
          onboardItem.subtitle,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black87,
          ),
        ).paddingLR16.paddingTop8,
      ],
    );
  }
}
