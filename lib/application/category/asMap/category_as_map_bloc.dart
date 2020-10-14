import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:easy_tasks/domain/category/category.dart';
import 'package:easy_tasks/domain/category/i_category_repository.dart';
import 'package:easy_tasks/domain/core/firebase_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'category_as_map_event.dart';

part 'category_as_map_state.dart';

part 'category_as_map_bloc.freezed.dart';

@injectable
class CategoryAsMapBloc extends Bloc<CategoryAsMapEvent, CategoryAsMapState> {
  final ICategoryRepository repository;
  CategoryAsMapBloc(this.repository)
      : super(const CategoryAsMapState.initial());

  @override
  Stream<CategoryAsMapState> mapEventToState(
    CategoryAsMapEvent event,
  ) async* {
    yield* event.map(
      getCategories: (event) async* {
        yield const CategoryAsMapState.isLoading();
        yield* repository
            .watchCategoriesAsMap()
            .map((event) => CategoryAsMapState.loadSuccess(event));
      },
    );
  }
}
