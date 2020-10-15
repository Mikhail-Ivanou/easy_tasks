import 'package:easy_tasks/domain/core/firebase_failure.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_response.freezed.dart';

@freezed
abstract class FirebaseResponse with _$FirebaseResponse {
  const factory FirebaseResponse.success() = _Success;
  const factory FirebaseResponse.failure({@required FirebaseFailure failure}) =
      _Failure;
  const factory FirebaseResponse.empty() = _Empty;
}
