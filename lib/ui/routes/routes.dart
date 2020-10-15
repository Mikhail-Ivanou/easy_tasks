import 'package:auto_route/auto_route_annotations.dart';
import 'package:easy_tasks/ui/auth/auth_screen.dart';
import 'package:easy_tasks/ui/auth/reset_password_screen.dart';
import 'package:easy_tasks/ui/core/splash_screen.dart';
import 'package:easy_tasks/ui/main/main_screen.dart';
import 'package:easy_tasks/ui/task_detail/task_detail_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute<SplashScreen>(page: SplashScreen, initial: true),
    AdaptiveRoute<AuthScreen>(page: AuthScreen),
    AdaptiveRoute<ResetPasswordScreen>(
        page: ResetPasswordScreen, fullscreenDialog: true),
    AdaptiveRoute<MainScreen>(page: MainScreen),
    AdaptiveRoute<TaskDetailPage>(page: TaskDetailPage, fullscreenDialog: true),
  ],
)
class $TasksRouter {}
