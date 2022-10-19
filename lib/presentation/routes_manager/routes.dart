import 'package:flutter/material.dart';
import 'package:tut_app/presentation/resources/string_manager.dart';
import 'package:tut_app/presentation/routes_manager/forget_password/forget_password_view.dart';
import 'package:tut_app/presentation/routes_manager/home/home_view.dart';
import 'package:tut_app/presentation/routes_manager/login/login_view.dart';
import 'package:tut_app/presentation/routes_manager/onboarding/onboarding_view.dart';
import 'package:tut_app/presentation/routes_manager/register/register_view.dart';
import 'package:tut_app/presentation/routes_manager/splash/splash_view.dart';
import 'package:tut_app/presentation/routes_manager/store_details/store_details_view.dart';
import 'package:tut_app/presentation/resources/string_manager.dart';
class Routes{
  static const String splashScreenRoute="/";
  static const String onBoardingRoute="/onBoarding";
  static const String homeRoute="/home";
  static const String registerRoute="/register";
  static const String loginRoute="/login";
  static const String forgetPasswordRoute="/forgetPassword";
  static const String storeDetailsRoute="/storeDetails";

}


class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings settings){
    switch(settings.name) {
      case Routes.splashScreenRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.forgetPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordView());
      case Routes.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => const StoreDetailsView());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const Home_view());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) => const OnboardingView());

      default:
        return unDefinedRoute();
    }
  }
  static Route<dynamic>unDefinedRoute(){
    return MaterialPageRoute(builder: (_) => Scaffold(
      appBar: AppBar(
        title: Text(AppString.noRouteFound),
      ),
        body: Center(child:Text(AppString.noRouteFound)

        ) ));

  }
}