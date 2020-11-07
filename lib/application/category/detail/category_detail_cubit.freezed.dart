// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'category_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CategoryDetailStateTearOff {
  const _$CategoryDetailStateTearOff();

// ignore: unused_element
  _CategoryDetailState call(
      {@required TaskCategory category,
      @required bool isTitleValid,
      @required bool isNew,
      @required FirebaseResponse response,
      @required bool showErrorMessages}) {
    return _CategoryDetailState(
      category: category,
      isTitleValid: isTitleValid,
      isNew: isNew,
      response: response,
      showErrorMessages: showErrorMessages,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CategoryDetailState = _$CategoryDetailStateTearOff();

/// @nodoc
mixin _$CategoryDetailState {
  TaskCategory get category;
  bool get isTitleValid;
  bool get isNew;
  FirebaseResponse get response;
  bool get showErrorMessages;

  $CategoryDetailStateCopyWith<CategoryDetailState> get copyWith;
}

/// @nodoc
abstract class $CategoryDetailStateCopyWith<$Res> {
  factory $CategoryDetailStateCopyWith(
          CategoryDetailState value, $Res Function(CategoryDetailState) then) =
      _$CategoryDetailStateCopyWithImpl<$Res>;
  $Res call(
      {TaskCategory category,
      bool isTitleValid,
      bool isNew,
      FirebaseResponse response,
      bool showErrorMessages});

  $TaskCategoryCopyWith<$Res> get category;
  $FirebaseResponseCopyWith<$Res> get response;
}

/// @nodoc
class _$CategoryDetailStateCopyWithImpl<$Res>
    implements $CategoryDetailStateCopyWith<$Res> {
  _$CategoryDetailStateCopyWithImpl(this._value, this._then);

  final CategoryDetailState _value;
  // ignore: unused_field
  final $Res Function(CategoryDetailState) _then;

  @override
  $Res call({
    Object category = freezed,
    Object isTitleValid = freezed,
    Object isNew = freezed,
    Object response = freezed,
    Object showErrorMessages = freezed,
  }) {
    return _then(_value.copyWith(
      category:
          category == freezed ? _value.category : category as TaskCategory,
      isTitleValid:
          isTitleValid == freezed ? _value.isTitleValid : isTitleValid as bool,
      isNew: isNew == freezed ? _value.isNew : isNew as bool,
      response:
          response == freezed ? _value.response : response as FirebaseResponse,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
    ));
  }

  @override
  $TaskCategoryCopyWith<$Res> get category {
    if (_value.category == null) {
      return null;
    }
    return $TaskCategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value));
    });
  }

  @override
  $FirebaseResponseCopyWith<$Res> get response {
    if (_value.response == null) {
      return null;
    }
    return $FirebaseResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc
abstract class _$CategoryDetailStateCopyWith<$Res>
    implements $CategoryDetailStateCopyWith<$Res> {
  factory _$CategoryDetailStateCopyWith(_CategoryDetailState value,
          $Res Function(_CategoryDetailState) then) =
      __$CategoryDetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {TaskCategory category,
      bool isTitleValid,
      bool isNew,
      FirebaseResponse response,
      bool showErrorMessages});

  @override
  $TaskCategoryCopyWith<$Res> get category;
  @override
  $FirebaseResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$CategoryDetailStateCopyWithImpl<$Res>
    extends _$CategoryDetailStateCopyWithImpl<$Res>
    implements _$CategoryDetailStateCopyWith<$Res> {
  __$CategoryDetailStateCopyWithImpl(
      _CategoryDetailState _value, $Res Function(_CategoryDetailState) _then)
      : super(_value, (v) => _then(v as _CategoryDetailState));

  @override
  _CategoryDetailState get _value => super._value as _CategoryDetailState;

  @override
  $Res call({
    Object category = freezed,
    Object isTitleValid = freezed,
    Object isNew = freezed,
    Object response = freezed,
    Object showErrorMessages = freezed,
  }) {
    return _then(_CategoryDetailState(
      category:
          category == freezed ? _value.category : category as TaskCategory,
      isTitleValid:
          isTitleValid == freezed ? _value.isTitleValid : isTitleValid as bool,
      isNew: isNew == freezed ? _value.isNew : isNew as bool,
      response:
          response == freezed ? _value.response : response as FirebaseResponse,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
    ));
  }
}

/// @nodoc
class _$_CategoryDetailState implements _CategoryDetailState {
  const _$_CategoryDetailState(
      {@required this.category,
      @required this.isTitleValid,
      @required this.isNew,
      @required this.response,
      @required this.showErrorMessages})
      : assert(category != null),
        assert(isTitleValid != null),
        assert(isNew != null),
        assert(response != null),
        assert(showErrorMessages != null);

  @override
  final TaskCategory category;
  @override
  final bool isTitleValid;
  @override
  final bool isNew;
  @override
  final FirebaseResponse response;
  @override
  final bool showErrorMessages;

  @override
  String toString() {
    return 'CategoryDetailState(category: $category, isTitleValid: $isTitleValid, isNew: $isNew, response: $response, showErrorMessages: $showErrorMessages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CategoryDetailState &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.isTitleValid, isTitleValid) ||
                const DeepCollectionEquality()
                    .equals(other.isTitleValid, isTitleValid)) &&
            (identical(other.isNew, isNew) ||
                const DeepCollectionEquality().equals(other.isNew, isNew)) &&
            (identical(other.response, response) ||
                const DeepCollectionEquality()
                    .equals(other.response, response)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(isTitleValid) ^
      const DeepCollectionEquality().hash(isNew) ^
      const DeepCollectionEquality().hash(response) ^
      const DeepCollectionEquality().hash(showErrorMessages);

  @override
  _$CategoryDetailStateCopyWith<_CategoryDetailState> get copyWith =>
      __$CategoryDetailStateCopyWithImpl<_CategoryDetailState>(
          this, _$identity);
}

abstract class _CategoryDetailState implements CategoryDetailState {
  const factory _CategoryDetailState(
      {@required TaskCategory category,
      @required bool isTitleValid,
      @required bool isNew,
      @required FirebaseResponse response,
      @required bool showErrorMessages}) = _$_CategoryDetailState;

  @override
  TaskCategory get category;
  @override
  bool get isTitleValid;
  @override
  bool get isNew;
  @override
  FirebaseResponse get response;
  @override
  bool get showErrorMessages;
  @override
  _$CategoryDetailStateCopyWith<_CategoryDetailState> get copyWith;
}
