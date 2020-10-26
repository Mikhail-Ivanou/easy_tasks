// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';

import '../../domain/category/category.dart';
import '../../domain/task/task.dart';
import '../about/about.dart';
import '../auth/auth_screen.dart';
import '../auth/reset_password_screen.dart';
import '../category/manage_category_page.dart';
import '../core/splash_screen.dart';
import '../main/by_category/tasks_list_page.dart';
import '../main/main_screen.dart';
import '../settings/settngs_page.dart';
import '../task_detail/task_create_page.dart';
import '../task_detail/task_detail_page.dart';

class Routes {
  static const String splashScreen = '/';
  static const String authScreen = '/auth-screen';
  static const String resetPasswordScreen = '/reset-password-screen';
  static const String mainScreen = '/main-screen';
  static const String taskDetailPage = '/task-detail-page';
  static const String taskCreatePage = '/task-create-page';
  static const String tasksListPage = '/tasks-list-page';
  static const String settingsPage = '/settings-page';
  static const String manageCategoriesPage = '/manage-categories-page';
  static const String aboutPage = '/about-page';
  static const all = <String>{
    splashScreen,
    authScreen,
    resetPasswordScreen,
    mainScreen,
    taskDetailPage,
    taskCreatePage,
    tasksListPage,
    settingsPage,
    manageCategoriesPage,
    aboutPage,
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
    RouteDef(Routes.taskCreatePage, page: TaskCreatePage),
    RouteDef(Routes.tasksListPage, page: TasksListPage),
    RouteDef(Routes.settingsPage, page: SettingsPage),
    RouteDef(Routes.manageCategoriesPage, page: ManageCategoriesPage),
    RouteDef(Routes.aboutPage, page: AboutPage),
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
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
    TaskCreatePage: (data) {
      final args = data.getArgs<TaskCreatePageArguments>(
        orElse: () => TaskCreatePageArguments(),
      );
      return buildAdaptivePageRoute<TaskCreatePage>(
        builder: (context) => TaskCreatePage(
          key: args.key,
          initialCategory: args.initialCategory,
        ),
        settings: data,
        fullscreenDialog: true,
      );
    },
    TasksListPage: (data) {
      final args = data.getArgs<TasksListPageArguments>(nullOk: false);
      return buildAdaptivePageRoute<TasksListPage>(
        builder: (context) => TasksListPage(
          key: args.key,
          category: args.category,
        ),
        settings: data,
      );
    },
    SettingsPage: (data) {
      return buildAdaptivePageRoute<SettingsPage>(
        builder: (context) => SettingsPage(),
        settings: data,
      );
    },
    ManageCategoriesPage: (data) {
      return buildAdaptivePageRoute<ManageCategoriesPage>(
        builder: (context) => ManageCategoriesPage(),
        settings: data,
      );
    },
    AboutPage: (data) {
      return buildAdaptivePageRoute<AboutPage>(
        builder: (context) => AboutPage(),
        settings: data,
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
  TaskDetailPageArguments({this.key, @required this.initialTask});
}

/// TaskCreatePage arguments holder class
class TaskCreatePageArguments {
  final Key key;
  final TaskCategory initialCategory;
  TaskCreatePageArguments({this.key, this.initialCategory});
}

/// TasksListPage arguments holder class
class TasksListPageArguments {
  final Key key;
  final TaskCategory category;
  TasksListPageArguments({this.key, @required this.category});
}
