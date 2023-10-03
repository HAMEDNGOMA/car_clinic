import 'package:car_clinic/presentation_layer/add_car/my_cars.dart';
import 'package:car_clinic/presentation_layer/home_screen/home_screen.dart';
import 'package:car_clinic/presentation_layer/service_offers/service_offers.dart';
import 'package:car_clinic/presentation_layer/service_steps/service_steps.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String homeScreen = '/';
  static const String addCar = '/addCar';
  static const String loginScreen = '/loginScreen';
  static const String signUpScreen = '/signUpScreen';
  static const String maintenanceOffersScreen = "/maintenanceOffers";
  static const String serviceStepsScreen = "/serviceSteps";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.addCar:
        return MaterialPageRoute(builder: (_) => const MyCars());
      case Routes.maintenanceOffersScreen:
        return MaterialPageRoute(builder: (_) => const MaintenanceOffers());
      case Routes.serviceStepsScreen:
        return MaterialPageRoute(builder: (_) => const ServiceSteps());
      default:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
  }
}
