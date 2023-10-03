import 'package:car_clinic/sheard/managers/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class TitleCarClinic extends StatelessWidget {
  const TitleCarClinic({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Clinic",
              style: GoogleFonts.pacifico(
                  fontSize: 40, color: ColorManager.mainColor),
            ),
            getLottie(),
            Text(
              "Car",
              style: GoogleFonts.pacifico(
                fontSize: 40,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getLottie() {
    return SizedBox(
      child: Lottie.asset('assets/animation/engine.json',
          fit: BoxFit.contain, height: 50),
    );
  }
}
