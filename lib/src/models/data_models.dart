import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_models.freezed.dart';

// sealed class Result {}
//
// class Success<T> extends Result {
//   final T data;
//   Success(this.data);
// }
//
// class Error extends Result {
//   final String errorMessage;
//   Error(this.errorMessage);
// }
//

@freezed
sealed class Result<T> with _$Result<T> {
  const factory Result.success({
    required T data,
  }) = Success<T>;

  const factory Result.error({
    required String errorMessage,
    StackTrace? stackTrace
  }) = Error;
}


/// Hash of a sha1 with validation
class Sha1 {
  final String hash;

  Sha1(this.hash) : assert(hash.length == 40);

  String get sub => hash.substring(0, 2);

  String get short => hash.substring(0, 6);
}