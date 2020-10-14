import 'package:flutter/material.dart';
import 'package:foodmarket_flutter_fe/models/models.dart';
import 'package:foodmarket_flutter_fe/ui/pages/pages.dart';
import 'package:get/get.dart';

import 'ui/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: FoodDetailPage(
          transaction: Transaction(food: mockFoods[0]),
        ));
  }
}
