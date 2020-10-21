import 'package:flutter/foundation.dart';

class Counts {
  final int totalCount;
  final int otherCount;

  Counts({@required this.totalCount, @required this.otherCount});

  factory Counts.fromMap(Map<String, dynamic> map) {
    return Counts(
      totalCount: map['totalCount'] as int,
      otherCount: map['otherCount'] as int,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'totalCount': totalCount,
      'otherCount': otherCount,
    };
  }
}
