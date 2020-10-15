// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';

import '../../domain/category/category.dart';
import '../../domain/task/task.dart';
import '../auth/auth_screen.dart';
import '../auth/reset_password_screen.dart';
import '../core/splash_screen.dart';
import '../main/main_screen.dart';
import '../task_detail/task_detail_page.dart';

class Routes {
  static const String splashScreen = '/';
  static const String authScreen = '/auth-screen';
  static const String resetPasswordScreen = '/reset-password-screen';
  static const String mainScreen = '/main-screen';
  static const String taskDetailPage = '/task-detail-page';
  static const all = <String>{
    splashScreen,
    authScreen,
    resetPasswordScreen,
    mainScreen,
    taskDetailPage,
  };
}

class TasksRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.authScreen, page: AuthScreen),
    RouteDef(Routes.resetPasswordScreen, page: ResetPasswordScreen),
    RouteDef(Routes.mainScreen, page: MainScreen),
    RouteDef(Routes.taskDetailPage, page: TaskDetailPage),
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
    ResetPasswordScreen: (data) {
      final args = data.getArgs<ResetPasswordScreenArguments>(nullOk: false);
      return buildAdaptivePageRoute<ResetPasswordScreen>(
        builder: (context) => ResetPasswordScreen(
          key: args.key,
          initialEmail: args.initialEmail,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
    MainScreen: (data) {
      return buildAdaptivePageRoute<MainScreen>(
        builder: (context) => MainScreen(),
        settings: data,
      );
    },
    TaskDetailPage: (data) {
      final args = data.getArgs<TaskDetailPageArguments>(nullOk: false);
      return buildAdaptivePageRoute<TaskDetailPage>(
        builder: (context) => TaskDetailPage(
          key: args.key,
          initialTask: args.initialTask,
          category: args.category,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ResetPasswordScreen arguments holder class
class ResetPasswordScreenArguments {
  final Key key;
  final String initialEmail;
  ResetPasswordScreenArguments({this.key, @required this.initialEmail});
}

/// TaskDetailPage arguments holder class
class TaskDetailPageArguments {
  final Key key;
  final Task initialTask;
  final TaskCategory category;
  TaskDetailPageArguments(
      {this.key, @required this.initialTask, this.category});
}
