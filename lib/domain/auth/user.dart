import 'package:easy_tasks/core/equatable_x.dart';
import 'package:flutter/foundation.dart';

class SignedUser extends EquatableX {
  final String userId;

  SignedUser({@required this.userId});

  @override
  List<Object> get props => [userId];
}
