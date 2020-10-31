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

  StreamSubscription<List<TaskCategory>> _noteStreamSubscription;

  CategoryCardsBloc(this.repository)
      : super(const CategoryCardsState.initial());

  @override
  Stream<CategoryCardsState> mapEventToState(
    CategoryCardsEvent event,
  ) async* {
    yield* event.map(
      getCategories: (event) async* {
        yield const CategoryCardsState.isLoading();
        _noteStreamSubscription = repository.watchCategories().listen((event) {
          add(CategoryCardsEvent.categoryReceived(event));
        });
      },
      reorderCategories: (_ReorderCategories value) async* {
        yield const CategoryCardsState.isLoading();
        final categories = value.categories;
        categories.insert(value.newIndex, categories.removeAt(value.oldIndex));
        yield CategoryCardsState.loadSuccess(categories);
        repository.updateList(categories);
      },
      categoryReceived: (_CategoryReceived value) async* {
        yield CategoryCardsState.loadSuccess(value.categories);
      },
    );
  }

  @override
  Future<void> close() async {
    await _noteStreamSubscription?.cancel();
    return super.close();
  }
}
