import 'package:auto_route/auto_route.dart';
import 'package:easy_tasks/application/auth/auth_bloc.dart';
import 'package:easy_tasks/ui/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          authed: () =>
              ExtendedNavigator.of(context).replace(Routes.mainScreen),
          unAuthed: () =>
              ExtendedNavigator.of(context).replace(Routes.authScreen),
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
