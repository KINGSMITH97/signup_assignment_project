import 'dart:async';

import 'package:debouncer_project/extensions/widget_extension.dart';
import 'package:debouncer_project/screens/login_page.dart';
import 'package:debouncer_project/utils/app_constants.dart';
import 'package:debouncer_project/widgets/onboard_item_screen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int activeIndex = 0;

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 3), (timer) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 700),
        curve: Curves.easeIn,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.6,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  activeIndex = value % 3;
                  print(activeIndex);
                });
              },
              itemBuilder: (context, index) {
                return OnboardItemScreen(
                  onboardItem: onboardItems[index % 3],
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              onboardItems.length,
              (index) => CircleAvatar(
                backgroundColor:
                    (activeIndex == index) ? Colors.green : Colors.grey[300],
                radius: 5,
              ).paddingLR4,
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ));
              },
              child: const Text('Get Started'),
            ).paddingTop32,
          ).paddingLR16,
        ],
      ),
    );
  }
}
