import 'package:car_clinic/sheard/component/gap.dart';
import 'package:car_clinic/sheard/managers/string_manager.dart';
import 'package:car_clinic/sheard/widget/caritem_stepper.dart';
import 'package:car_clinic/sheard/widget/stepper_service.dart';
import 'package:flutter/material.dart';

class ServiceSteps extends StatefulWidget {
  const ServiceSteps({super.key});

  @override
  State<ServiceSteps> createState() => _ServiceStepsState();
}

class _ServiceStepsState extends State<ServiceSteps> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            StringManager.serviceSteps,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
        body: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CarItemStepper(),
              Gap(
                width: double.infinity,
              ),
              StepperService(),
            ],
          ),
        ),
      ),
    );
  }
}
