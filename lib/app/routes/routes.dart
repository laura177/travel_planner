import 'package:flutter/widgets.dart';
import 'package:onboarding_travel_planner/app/app.dart';
import 'package:onboarding_travel_planner/home/home.dart';
import 'package:onboarding_travel_planner/login/login.dart';

List<Page<dynamic>> onGenerateAppViewPages(
  AppStatus state,
  List<Page<dynamic>> pages,
) {
  switch (state) {
    case AppStatus.authenticated:
      return [HomePage.page()];
    case AppStatus.unauthenticated:
      return [LoginPage.page()];
  }
}
