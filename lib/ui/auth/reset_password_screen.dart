import 'package:easy_tasks/application/auth/reset_password/reset_password_bloc.dart';
import 'package:easy_tasks/injection.dart';
import 'package:easy_tasks/ui/core/alert_helper.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPasswordScreen extends StatelessWidget {
  final String initialEmail;
  const ResetPasswordScreen({Key key, @required this.initialEmail})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => getIt<ResetPasswordBloc>()
        ..add(ResetPasswordEvent.emailChanged(email: initialEmail)),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Reset password'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: BlocConsumer<ResetPasswordBloc, ResetPasswordState>(
            listener: (context, state) {
              state.result.when(
                success: () async {
                  await _showConfirmPasswordDialog(context);
                  //TODO need pass result back
                  // final currentEmailValue =
                  //     context.bloc<ResetPasswordBloc>().state.emailAddress;
                  // Navigator.of(context).pop(currentEmailValue);
                },
                empty: () {},
                failure: (error) {
                  final message = error.when(
                    userNotFound: () => 'User not found',
                    serverError: () => 'Server Error',
                    incorrectEmail: () => 'incorrect email format',
                  );
                  FlushbarHelper.createError(message: message).show(context);
                },
              );
            },
            builder: (context, state) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Flexible(
                  child: Hero(
                    tag: 'logo',
                    // ignore: sized_box_for_whitespace
                    child: Container(
                      height: 200.0,
                      child: Image.asset('images/logo.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 48.0,
                ),
                Form(
                  autovalidateMode: state.showErrorMessages
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled,
                  child: TextFormField(
                    autofocus: true,
                    initialValue: initialEmail,
                    onFieldSubmitted: (value) {
                      context
                          .bloc<ResetPasswordBloc>()
                          .add(const ResetPasswordEvent.resetPassword());
                    },
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: 'Email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) => context
                        .bloc<ResetPasswordBloc>()
                        .add(ResetPasswordEvent.emailChanged(email: value)),
                    validator: (_) =>
                        context.bloc<ResetPasswordBloc>().state.validEmail
                            ? null
                            : 'Invalid Email',
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                RaisedButton(
                  onPressed: () {
                    context
                        .bloc<ResetPasswordBloc>()
                        .add(const ResetPasswordEvent.resetPassword());
                  },
                  child: const Text('Reset password'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> _showConfirmPasswordDialog(BuildContext context) async {
    final children = <Widget>[
      const Text('Password was successfully reset. Check email for details'),
    ];
    final actions = <Widget>[
      FlatButton(
        onPressed: () => Navigator.pop(context, true),
        child: const Text('Close'),
      ),
    ];
    return showConfirmDialog(
        context, const Text('Reset password'), children, actions);
  }
}
