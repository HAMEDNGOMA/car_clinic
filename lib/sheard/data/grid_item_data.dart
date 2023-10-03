import 'package:car_clinic/data_layer/local/models/grid_ittem_model.dart';
import 'package:car_clinic/sheard/icons/car_clinic_icons_icons.dart';
import 'package:car_clinic/sheard/managers/string_manager.dart';
import 'package:car_clinic/sheard/routes/routes.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

List<GridItemModel> gridItemData = [
  GridItemModel(
      title: StringManager.addCar,
      icon: CarClinicIcons.group_309,
      route: Routes.addCar,
      id: 1),
  GridItemModel(
      title: StringManager.activeCars,
      icon: CarClinicIcons.group_1,
      route: Routes.serviceStepsScreen,
      id: 2),
  GridItemModel(
      title: StringManager.history, icon: IconlyLight.paper, route: '', id: 3),
  GridItemModel(
      title: StringManager.serviceOffers,
      icon: CarClinicIcons.group_319,
      route: Routes.maintenanceOffersScreen,
      id: 4),
];
