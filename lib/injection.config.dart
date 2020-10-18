// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'application/auth/auth_bloc.dart';
import 'application/category/category_cards_bloc.dart';
import 'repository/category/category_repository.dart';
import 'repository/auth/firebase_auth_facade.dart';
import 'repository/core/firebase_injectable_module.dart';
import 'domain/auth/i_auth_facade.dart';
import 'domain/category/i_category_repository.dart';
import 'domain/core/i_initial_content_generator.dart';
import 'domain/task/i_task_repository.dart';
import 'repository/core/initial_content_generator.dart';
import 'application/auth/reset_password/reset_password_bloc.dart';
import 'application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'application/task/task_detail/task_detail_bloc.dart';
import 'application/task/list/task_list_bloc.dart';
import 'repository/task/task_repository.dart';
import 'application/task/total/total_tasks_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<IAuthFacade>(
      () => FirebaseAuthFacade(get<FirebaseAuth>(), get<GoogleSignIn>()));
  gh.lazySingleton<ICategoryRepository>(
      () => CategoryRepository(get<FirebaseFirestore>()));
  gh.lazySingleton<IInitialContentGenerator>(
      () => InitialContentGenerator(get<FirebaseFirestore>()));
  gh.lazySingleton<ITaskRepository>(() =>
      TaskRepository(get<FirebaseFirestore>(), get<ICategoryRepository>()));
  gh.factory<ResetPasswordBloc>(() => ResetPasswordBloc(get<IAuthFacade>()));
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthFacade>()));
  gh.factory<TaskDetailBloc>(() => TaskDetailBloc());
  gh.factory<TaskListBloc>(() => TaskListBloc(get<ITaskRepository>()));
  gh.factory<TotalTasksBloc>(() => TotalTasksBloc(get<ITaskRepository>()));
  gh.factory<AuthBloc>(
      () => AuthBloc(get<IAuthFacade>(), get<IInitialContentGenerator>()));
  gh.factory<CategoryCardsBloc>(
      () => CategoryCardsBloc(get<ICategoryRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
