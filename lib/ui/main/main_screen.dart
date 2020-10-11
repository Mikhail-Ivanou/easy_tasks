import 'package:easy_tasks/applicatoin/auth/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main page'),
        actions: [Menu()],
      ),
    );
  }
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(onSelected: (value) async {
      context.bloc<AuthBloc>().add(AuthEvent.signOut());
    }, itemBuilder: (BuildContext context) {
      return <PopupMenuItem<String>>[
        const PopupMenuItem<String>(
          value: 'logout',
          child: Text('Logout'),
        ),
      ];
    });
  }
}
