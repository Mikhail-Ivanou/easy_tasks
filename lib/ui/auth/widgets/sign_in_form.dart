import 'package:auto_route/auto_route.dart';
import 'package:easy_tasks/application/auth/auth_bloc.dart';
import 'package:easy_tasks/application/auth/sign_in_form/sign_in_form_bloc.dart';
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
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
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
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      // Based on passwordVisible state choose the icon
                      state.isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Theme.of(context).primaryColorDark,
                    ),
                    onPressed: () {
                      context.bloc<SignInFormBloc>().add(
                          const SignInFormEvent.switchPasswordVisibility());
                    },
                  ),
                ),
                autocorrect: false,
                obscureText: !state.isPasswordVisible,
                onChanged: (value) => context
                    .bloc<SignInFormBloc>()
                    .add(SignInFormEvent.passwordChanged(password: value)),
                validator: (_) =>
                    context.bloc<SignInFormBloc>().state.validPassword
                        ? null
                        : 'Short Password',
                onFieldSubmitted: (value) {
                  context
                      .bloc<SignInFormBloc>()
                      .add(const SignInFormEvent.signInWithCredentials());
                },
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
                            .add(const SignInFormEvent.signInWithCredentials());
                      },
                      child: const Text('SIGN IN'),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        context.bloc<SignInFormBloc>().add(
                            const SignInFormEvent.registerWithCredentials());
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
                      .add(const SignInFormEvent.signInWithGoogle());
                },
                color: Colors.lightBlue,
                child: const Text(
                  'SIGN IN WITH GOOGLE',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              FlatButton(
                onPressed: () async {
                  final currentEmail =
                      context.bloc<SignInFormBloc>().state.emailAddress;
                  final email = await ExtendedNavigator.of(context).push(
                      Routes.resetPasswordScreen,
                      arguments: ResetPasswordScreenArguments(
                          initialEmail: currentEmail));
                  //TODO fix navigation back
                  // if (email != null) {
                  //   context
                  //       .bloc<SignInFormBloc>()
                  //       .add(SignInFormEvent.emailChanged(email: email));
                  // }
                },
                child: const Text(
                  'Reset password',
                ),
              ),
              const SizedBox(
                height: 16,
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
            context.bloc<AuthBloc>().add(const AuthEvent.checkContentCreated());
            ExtendedNavigator.of(context).replace(Routes.mainScreen);
          },
          empty: () {},
          failure: (error) {
            FlushbarHelper.createError(
              message: error.when(
                  cancelledByUser: () => 'Cancelled',
                  serverError: () => 'Server Error',
                  emailAlreadyInUse: () => 'Email already in use',
                  invalidCredentials: () =>
                      'Invalid email and password combination'),
            ).show(context);
          },
        );
      },
    );
  }
}
