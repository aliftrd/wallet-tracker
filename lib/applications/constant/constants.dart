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

  /// [Home]
  static String homeGreeting(String name) => 'Hi! $name.';
  static const String HOME_WELCOME_MESSAGE = 'Welcome to Waltrack AI';

  /// [Wallet]
  static const String WALLET_TITLE = 'Wallet';
  static const String WALLET_DESCRIPTION = 'Kelola wallet anda dengan lebih mudah dan cepat.';

  /// [Error]
  static const String ERROR_TITLE = 'Ups! Ada kendala nih.';
  static const String ERROR_EMPTY_DESCRIPTION = 'Tidak ada data yang ditemukan.';
  static const String ERROR_NETWORK_DESCRIPTION = 'Kami mengalami kesulitan memuat data.\nCoba beberapa saat lagi.';

  /// [Validation]
  static String validatorRequired(String field) => 'This ${field.toLowerCase()} is required';
}
