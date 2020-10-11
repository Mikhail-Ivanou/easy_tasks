// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../auth/auth_screen.dart';
import '../main/main_screen.dart';
import '../splash/splash_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String authScreen = '/auth-screen';
  static const String mainScreen = '/main-screen';
  static const all = <String>{
    splashScreen,
    authScreen,
    mainScreen,
  };
}

class TasksRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.authScreen, page: AuthScreen),
    RouteDef(Routes.mainScreen, page: MainScreen),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreen: (data) {
      return buildAdaptivePageRoute<SplashScreen>(
        builder: (context) => SplashScreen(),
        settings: data,
      );
    },
    AuthScreen: (data) {
      return buildAdaptivePageRoute<AuthScreen>(
        builder: (context) => AuthScreen(),
        settings: data,
      );
    },
    MainScreen: (data) {
      return buildAdaptivePageRoute<MainScreen>(
        builder: (context) => MainScreen(),
        settings: data,
      );
    },
  };
}
