import 'package:easy_tasks/applicatoin/auth/reset_password/reset_password_bloc.dart';
import 'package:easy_tasks/injection.dart';
import 'package:easy_tasks/ui/core/alert_helper.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPasswordScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final String initialEmail;
  ResetPasswordScreen({Key key, @required this.initialEmail})
      : super(key: key) {
    _emailController.text = initialEmail;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => getIt<ResetPasswordBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Reset password'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: BlocConsumer<ResetPasswordBloc, ResetPasswordState>(
            listener: (context, state) {
              state.result.when(
                success: () {
                  _showConfirmPasswordDialog(context);
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
                          .add(ResetPasswordEvent.resetPassword());
                    },
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.email),
                      labelText: 'Email',
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textAlign: TextAlign.center,
                    // controller: _emailController,
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

  Future<void> _showConfirmPasswordDialog(BuildContext context) async {
    final children = <Widget>[
      const Text('Password was successfully reset. Check email for details'),
    ];
    final actions = <Widget>[
      FlatButton(
        onPressed: () => Navigator.pop(context, true),
        child: const Text('Close'),
      ),
    ];
    final bool result = await showConfirmDialog(
        context, const Text('Reset password'), children, actions);
    if (result) {
      Navigator.of(context).pop();
    }
  }
}
