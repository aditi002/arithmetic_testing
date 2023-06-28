

import 'package:flutter_arithmetic_classwork/feature/auth/presentation/view/arithmetic_view.dart';
import 'package:flutter_arithmetic_classwork/feature/auth/presentation/view/result_view.dart';

class AppRoute {
  AppRoute._();

  static const String homeRoute = '/home';
  static const String resultRoute = '/result';

  static getApplicationRoute() {
    return {
      homeRoute: (context) => const ArithView(),
      resultRoute: (context) => const ResultView(),
    };
  }
}