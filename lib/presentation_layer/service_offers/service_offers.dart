import 'package:car_clinic/sheard/component/gap.dart';
import 'package:car_clinic/sheard/data/offresdata.dart';
import 'package:car_clinic/sheard/managers/string_manager.dart';
import 'package:car_clinic/sheard/widget/maintenance_offers_widget.dart';
import 'package:flutter/material.dart';

class MaintenanceOffers extends StatefulWidget {
  const MaintenanceOffers({super.key});

  @override
  State<MaintenanceOffers> createState() => _MaintenanceOffersState();
}

class _MaintenanceOffersState extends State<MaintenanceOffers> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            StringManager.serviceOffers,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: ListView.separated(
                  itemBuilder: (context, index) => MaintenanceOffersItem(
                        offrersModel: offersList[index],
                      ),
                  separatorBuilder: (_, index) => const Gap(
                        height: 15,
                      ),
                  itemCount: 3),
            ),
          ],
        ),
      ),
    );
  }
}
