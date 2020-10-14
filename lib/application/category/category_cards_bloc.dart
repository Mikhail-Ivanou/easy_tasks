import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:easy_tasks/domain/category/category.dart';
import 'package:easy_tasks/domain/category/i_category_repository.dart';
import 'package:easy_tasks/domain/core/firebase_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_cards_event.dart';

part 'category_cards_state.dart';

part 'category_cards_bloc.freezed.dart';

@injectable
class CategoryCardsBloc extends Bloc<CategoryCardsEvent, CategoryCardsState> {
  final ICategoryRepository repository;

  CategoryCardsBloc(this.repository)
      : super(const CategoryCardsState.initial());

  @override
  Stream<CategoryCardsState> mapEventToState(
    CategoryCardsEvent event,
  ) async* {
    yield* event.map(
      getCategories: (event) async* {
        yield const CategoryCardsState.isLoading();
        yield* repository
            .watchCategories()
            .map((event) => CategoryCardsState.loadSuccess(event));
      },
    );
  }
}
