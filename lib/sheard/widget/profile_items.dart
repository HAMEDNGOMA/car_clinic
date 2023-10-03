import 'package:car_clinic/sheard/component/gap.dart';
import 'package:flutter/material.dart';

class ProfileItems extends StatelessWidget {
  const ProfileItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Image.asset(
            "assets/images/person.png",
          ),
          const Gap(
            width: 10,
          ),
          const Text("مرحبآ",
              style: TextStyle(
                fontSize: 20,
              )),
          const Gap(
            width: 3,
          ),
          const Text("نضال",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
        ],
      ),
    );
  }
}
