import 'package:car_clinic/data_layer/local/models/offers_model.dart';
import 'package:car_clinic/sheard/component/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MaintenanceOffersItem extends StatelessWidget {
  final OffrersModel offrersModel;
  const MaintenanceOffersItem({super.key, required this.offrersModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Material(
        elevation: 1,
        borderRadius: BorderRadius.circular(8.r),
        color: Colors.white,
        child: Container(
          width: 328.w,
          height: 131.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Row(
            children: [
              getImage(),
              offerData(),
            ],
          ),
        ),
      ),
    );
  }

  Widget offerData() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          offrersModel.title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const Gap(
          height: 4,
        ),
        Text(
          offrersModel.description1,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
        Text(
          offrersModel.description2,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
        Text(
          offrersModel.description3,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
        Text(
          offrersModel.description4,
          style: const TextStyle(
            fontSize: 14,
          ),
        ),
        const Spacer(),
        Text(
          offrersModel.price,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const Gap(
          height: 10,
        )
      ],
    );
  }

  Widget getImage() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 88.h,
        width: 88.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage(
                  offrersModel.imagePath,
                ),
                fit: BoxFit.cover)),
      ),
    );
  }
}
