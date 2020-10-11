import 'package:auto_route/auto_route_annotations.dart';
import 'package:easy_tasks/ui/auth/auth_screen.dart';
import 'package:easy_tasks/ui/main/main_screen.dart';
import 'package:easy_tasks/ui/splash/splash_screen.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AdaptiveRoute<SplashScreen>(page: SplashScreen, initial: true),
    AdaptiveRoute<AuthScreen>(page: AuthScreen),
    AdaptiveRoute<MainScreen>(page: MainScreen),
  ],
)
class $TasksRouter {}
