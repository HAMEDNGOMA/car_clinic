import 'package:car_clinic/sheard/component/gap.dart';
import 'package:car_clinic/sheard/managers/color_manager.dart';
import 'package:flutter/material.dart';

class HomeGridViewItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String route;
  const HomeGridViewItem(
      {super.key,
      required this.icon,
      required this.title,
      required this.route});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        height: 200,
        margin: const EdgeInsets.only(right: 8.0, bottom: 8.0),
        decoration: BoxDecoration(
          color: ColorManager.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(2, 1), // Shadow position
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 48.0,
              color: ColorManager.mainColor,
            ),
            const Gap(height: 8.0),
            Text(
              title,
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}
