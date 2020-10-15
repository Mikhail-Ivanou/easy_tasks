import 'package:easy_tasks/domain/core/firebase_response.dart';

abstract class IInitialContentGenerator {
  Future<FirebaseResponse> generateInitialContent();
}
