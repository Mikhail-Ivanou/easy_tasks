import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:easy_tasks/domain/category/category.dart';
import 'package:easy_tasks/domain/core/firebase_response.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'category_detail_state.dart';
part 'category_detail_cubit.freezed.dart';

@injectable
class CategoryDetailCubit extends Cubit<CategoryDetailState> {
  CategoryDetailCubit() : super(CategoryDetailState.initial());

  Future<void> init(TaskCategory category) async {
    final newState = state.copyWith(
      category: category ?? TaskCategory.create(),
      isTitleValid: category?.title?.isNotEmpty == true,
      isNew: category == null,
    );
    emit(newState);
  }

  Future<void> updateTilte(String title) async {
    emit(state.copyWith(
      category: state.category.copyWith(title: title),
      isTitleValid: title?.isNotEmpty == true,
    ));
  }

  Future<void> updateColor(Color color) async {
    emit(state.copyWith(
      category: state.category.copyWith(color: color),
    ));
  }

  Future<void> updateIcon(IconData icon) async {
    emit(state.copyWith(
      category: state.category.copyWith(icon: icon),
    ));
  }
}
