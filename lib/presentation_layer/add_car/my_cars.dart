import 'package:car_clinic/data_layer/local/models/car_model.dart';
import 'package:car_clinic/sheard/component/empty_box.dart';
import 'package:car_clinic/sheard/component/gap.dart';
import 'package:car_clinic/sheard/data/cars.dart';
import 'package:car_clinic/sheard/managers/color_manager.dart';
import 'package:car_clinic/sheard/managers/string_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyCars extends StatelessWidget {
  const MyCars({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> cars = [
      "مرسيدس",
      "بي ام دبليو",
    ];

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            StringManager.mycars,
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            cars.isEmpty
                ? Padding(
                    padding: EdgeInsets.only(top: 80.h),
                    child: Center(
                      child: getEmptyBox(),
                    ),
                  )
                : Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: ListView.separated(
                        itemCount: userCar.length,
                        separatorBuilder: (context, index) => Gap(
                          height: 10.h,
                        ),
                        itemBuilder: (context, index) {
                          return carCard(userCar[index]);
                        },
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  Widget carCard(CarModel car) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10.w,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: Colors.white,
        ),
        width: double.infinity,
        height: 60.h,
        child: Material(
          borderRadius: BorderRadius.circular(10.r),
          color: const Color.fromRGBO(246, 245, 245, 1),
          elevation: 1,
          shadowColor: Colors.grey.withOpacity(0.5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: Colors.grey.withOpacity(0.2),
                  ),
                  height: 40.h,
                  width: 40.w,
                  child: Icon(
                    MdiIcons.carSports,
                    color: ColorManager.mainColor,
                  ),
                ),
              ),
              Gap(
                width: 10.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      car.name,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(
                      car.serialNumber,
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: ColorManager.gry.withOpacity(0.5),
              ),
              const Gap(
                width: 10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
