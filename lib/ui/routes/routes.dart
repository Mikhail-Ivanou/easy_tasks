import 'package:auto_route/auto_route_annotations.dart';
import 'package:easy_tasks/ui/about/about.dart';
import 'package:easy_tasks/ui/auth/auth_screen.dart';
import 'package:easy_tasks/ui/auth/reset_password_screen.dart';
import 'package:easy_tasks/ui/category/category_detail_page.dart';
import 'package:easy_tasks/ui/category/manage_category_page.dart';
import 'package:easy_tasks/ui/core/splash_screen.dart';
import 'package:easy_tasks/ui/main/by_category/tasks_list_page.dart';
import 'package:easy_tasks/ui/main/main_screen.dart';
import 'package:easy_tasks/ui/settings/settngs_page.dart';
import 'package:easy_tasks/ui/task_detail/task_create_page.dart';
import 'package:easy_tasks/ui/task_detail/task_detail_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute<SplashScreen>(page: SplashScreen, initial: true),
    AdaptiveRoute<AuthScreen>(page: AuthScreen),
    AdaptiveRoute<ResetPasswordScreen>(
        page: ResetPasswordScreen, fullscreenDialog: true),
    AdaptiveRoute<MainScreen>(page: MainScreen),
    AdaptiveRoute<TaskDetailPage>(page: TaskDetailPage, fullscreenDialog: true),
    AdaptiveRoute<TaskCreatePage>(page: TaskCreatePage, fullscreenDialog: true),
    AdaptiveRoute<TasksListPage>(page: TasksListPage),
    AdaptiveRoute<SettingsPage>(page: SettingsPage),
    AdaptiveRoute<ManageCategoriesPage>(page: ManageCategoriesPage),
    AdaptiveRoute<CategoryDetailPage>(
        page: CategoryDetailPage, fullscreenDialog: true),
    AdaptiveRoute<AboutPage>(page: AboutPage),
  ],
)
class $TasksRouter {}
