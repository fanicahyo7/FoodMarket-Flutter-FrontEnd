import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodmarket_flutter_fe/cubit/food_cubit.dart';
import 'package:foodmarket_flutter_fe/cubit/transaction_cubit.dart';
import 'package:foodmarket_flutter_fe/cubit/user_cubit.dart';
import 'package:foodmarket_flutter_fe/ui/pages/pages.dart';
import 'package:get/get.dart';

import 'ui/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UserCubit()),
        BlocProvider(create: (_) => FoodCubit()),
        BlocProvider(create: (_) => TransactionCubit())
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignInPage(),
      ),
    );
  }
}
