import 'package:easy_tasks/domain/core/firebase_failure.dart';

abstract class IInitialContentGenerator {
  Future<FirebaseFailure> generateInitialContent();
}
