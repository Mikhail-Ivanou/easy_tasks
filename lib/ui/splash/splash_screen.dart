import 'package:auto_route/auto_route.dart';
import 'package:easy_tasks/applicatoin/auth/auth_bloc.dart';
import 'package:easy_tasks/ui/routes/routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.when(
          initial: (_) {},
          authed: (_) =>
              ExtendedNavigator.of(context).replace(Routes.mainScreen),
          unAuthed: (_) =>
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
