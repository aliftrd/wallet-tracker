class Constants {
  static const String HIVE_BOX = 'waltrack_hive_box';
  static const String HIVE_AUTH = 'waltrack_hive_auth';

  static const int NOTIFICATION_DURATION = 3;

  static const String TOAST_SUCCESS_TITLE = 'Berhasil!';
  static const String TOAST_ERROR_TITLE = 'Oopps!';

  static String validatorRequired(String field) => 'This ${field.toLowerCase()} is required';
}
