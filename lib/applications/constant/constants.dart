class Constants {
  static const String HIVE_BOX = 'waltrack_hive_box';
  static const String HIVE_AUTH = 'waltrack_hive_auth';

  static const int NOTIFICATION_DURATION = 3;

  static const String TOAST_SUCCESS_TITLE = 'Berhasil!';
  static const String TOAST_ERROR_TITLE = 'Oopps!';

  /// [Dictionary]
  /// [Login]
  static const String LOGIN_TITLE = 'Masuk ke WaltrackAI';
  static const String LOGIN_DESCRIPTION = 'Kelola keuangan dengan lebih cerdas dan cepat.';

  static const LOGIN_EMAIL_KEY = 'email';
  static const String LOGIN_EMAIL_LABEL = 'Email';
  static const String LOGIN_EMAIL_HINT = 'Masukkan email anda';
  static const String LOGIN_PASSWORD_KEY = 'password';
  static const String LOGIN_PASSWORD_LABEL = 'Password';
  static const String LOGIN_PASSWORD_HINT = 'Masukkan password anda';
  static const String LOGIN_FORGOT_PASSWORD_ACTION = "Lupa password?";
  static const String LOGIN_ACTION = 'Masuk';
  static const String LOGIN_ACTION_REGISTER_LABEL = "Belum punya akun? ";
  static const String LOGIN_ACTION_REGISTER_ACTION = "Daftar sekarang!";

  /// [Validation]
  static String validatorRequired(String field) => 'This ${field.toLowerCase()} is required';
}
