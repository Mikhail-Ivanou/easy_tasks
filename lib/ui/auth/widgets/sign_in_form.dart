import 'package:auto_route/auto_route.dart';
import 'package:easy_tasks/applicatoin/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:easy_tasks/ui/routes/routes.gr.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessages
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: [
              const Text(
                '📝',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 130),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: 'Email',
                ),
                autocorrect: false,
                onChanged: (value) => context
                    .bloc<SignInFormBloc>()
                    .add(SignInFormEvent.emailChanged(email: value)),
                validator: (_) =>
                    context.bloc<SignInFormBloc>().state.validEmail
                        ? null
                        : 'Invalid Email',
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                ),
                autocorrect: false,
                obscureText: true,
                onChanged: (value) => context
                    .bloc<SignInFormBloc>()
                    .add(SignInFormEvent.passwordChanged(password: value)),
                validator: (_) =>
                    context.bloc<SignInFormBloc>().state.validPassword
                        ? null
                        : 'Short Password',
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        context
                            .bloc<SignInFormBloc>()
                            .add(SignInFormEvent.signInWithCredentials());
                      },
                      child: const Text('SIGN IN'),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        context
                            .bloc<SignInFormBloc>()
                            .add(SignInFormEvent.registerWithCredentials());
                      },
                      child: const Text('REGISTER'),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              RaisedButton(
                onPressed: () {
                  context
                      .bloc<SignInFormBloc>()
                      .add(SignInFormEvent.signInWithGoogle());
                },
                color: Colors.lightBlue,
                child: const Text(
                  'SIGN IN WITH GOOGLE',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              if (state.isSubmitting) ...[
                const SizedBox(height: 8),
                const LinearProgressIndicator()
              ]
            ],
          ),
        );
      },
      listener: (context, state) {
        state.authResult.when(
          success: (successValue) {
            ExtendedNavigator.of(context).replace(Routes.mainScreen);
          },
          empty: null,
          error: (error) {
            FlushbarHelper.createError(
              message: error.error.when(
                  cancelledByUser: (_) => 'Cancelled',
                  serverError: (_) => 'Server Error',
                  emailAlreadyInUse: (_) => 'Email already in use',
                  invalidCredentials: (_) =>
                      'Invalid email and password combination'),
            ).show(context);
          },
        );
      },
    );
  }
}
