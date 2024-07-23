import 'package:lanars_test_task/data/core/model/failure/failure.dart';

Failure catchBoxCrash(Object e, StackTrace s, String reason) {
  return Failure.unexpected(e, s);
}
