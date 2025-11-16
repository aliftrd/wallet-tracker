enum SubmissionStatus {
  initial,
  loading,
  success,
  failure,
}

extension SubmissionStatusExtension on SubmissionStatus {
  bool get isInitial => this == SubmissionStatus.initial;
  bool get isLoading => this == SubmissionStatus.loading;
  bool get isSuccess => this == SubmissionStatus.success;
  bool get isFailure => this == SubmissionStatus.failure;
}

mixin SubmissionStatusMixin {
  SubmissionStatus get status;
}

extension SubmissionStatusStateExtension on SubmissionStatusMixin {
  bool get isInitial => status.isInitial;
  bool get isLoading => status.isLoading;
  bool get isSuccess => status.isSuccess;
  bool get isFailure => status.isFailure;
}

mixin FormErrorsMixin {
  Map<String, dynamic>? get errors;
}

/// Extension to make error text extraction available globally on bloc states
extension FormErrorsStateExtension on FormErrorsMixin {
  String? getErrorText(String key) {
    final error = errors?[key];
    if (error == null) return null;
    if (error is List) {
      return error.isNotEmpty ? error.first.toString() : null;
    }
    if (error is String) return error;
    return error.toString();
  }
}
