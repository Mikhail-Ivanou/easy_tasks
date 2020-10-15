import 'package:auto_route/auto_route.dart';
import 'package:easy_tasks/application/auth/auth_bloc.dart';
import 'package:easy_tasks/injection.dart';
import 'package:easy_tasks/ui/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                getIt<AuthBloc>()..add(const AuthEvent.authCheckRequest())),
      ],
      child: MaterialApp(
        title: 'Notes',
        builder: ExtendedNavigator(
          router: TasksRouter(),
        ),
        theme: ThemeData.light().copyWith(
          primaryColor: Colors.lightBlueAccent,
          accentColor: Colors.blueAccent,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.blue.shade900,
          ),
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          // textTheme: buildAppTextTheme(),
        ),
      ),
    );
  }
}
