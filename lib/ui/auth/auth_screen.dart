import 'package:easy_tasks/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:easy_tasks/injection.dart';
import 'package:easy_tasks/ui/auth/widgets/sign_in_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (context) => getIt<SignInFormBloc>(),
          child: SignInForm(),
        ),
      ),
    );
  }
}
