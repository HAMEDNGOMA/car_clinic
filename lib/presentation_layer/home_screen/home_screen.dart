import 'package:car_clinic/sheard/component/gap.dart';
import 'package:car_clinic/sheard/data/grid_item_data.dart';
import 'package:car_clinic/sheard/widget/carsual_panner.dart';
import 'package:car_clinic/sheard/widget/home_grid_view.dart';
import 'package:car_clinic/sheard/widget/profile_items.dart';
import 'package:car_clinic/sheard/widget/title_with_lotte.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: homeScreenAppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Gap(
              height: 10,
            ),
            const ProfileItems(),
            const Gap(
              height: 20,
            ),
            const CarsualPanner(),
            const Gap(
              height: 10,
            ),
            Expanded(child: getGridItems()),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget homeScreenAppBar() {
    return AppBar(
      title: const TitleCarClinic(),
      centerTitle: true,
    );
  }

  Widget getGridItems() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.9.sp,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15),
      itemBuilder: (context, index) => HomeGridViewItem(
        icon: gridItemData[index].icon,
        title: gridItemData[index].title,
        route: gridItemData[index].route,
      ),
      itemCount: gridItemData.length,
      padding: const EdgeInsets.all(10),
    );
  }
}
