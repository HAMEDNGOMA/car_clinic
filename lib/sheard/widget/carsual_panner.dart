import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarsualPanner extends StatefulWidget {
  const CarsualPanner({super.key});

  @override
  State<CarsualPanner> createState() => _CarsualPannerState();
}

class _CarsualPannerState extends State<CarsualPanner> {
  int current = 0;
  List<Widget> items = [
    Image.network(
      "https://www.carcility.com/blog/wp-content/uploads/2021/03/WhatsApp-Image-2021-03-03-at-12.14.59-PM.jpeg",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://www.carcility.com/blog/wp-content/uploads/2021/03/WhatsApp-Image-2021-03-03-at-12.14.59-PM.jpeg",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://www.carcility.com/blog/wp-content/uploads/2021/03/WhatsApp-Image-2021-03-03-at-12.14.59-PM.jpeg",
      fit: BoxFit.cover,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        elevation: 2,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: SizedBox(
              child: CarouselSlider(
            options: CarouselOptions(
              height: 160,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.linearToEaseOut,
              pauseAutoPlayOnTouch: true,
              aspectRatio: 2.0,
              scrollPhysics: const BouncingScrollPhysics(),
              enlargeCenterPage: true,
              viewportFraction: 1,
              onPageChanged: (index, reason) {
                setState(() {
                  current = index;
                });
              },
            ),
            items: items,
          )),
        ),
      ),
    );
  }
}
