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
  static const String LOGIN_FORGOT_PASSWORD_ACTION = 'Lupa password?';
  static const String LOGIN_ACTION = 'Masuk';
  static const String LOGIN_ACTION_REGISTER_LABEL = 'Belum punya akun? ';
  static const String LOGIN_ACTION_REGISTER_ACTION = 'Daftar sekarang!';

  /// [Switcher]
  static const String SWITCHER_HOME_LABEL = 'Beranda';
  static const String SWITCHER_WALLET_LABEL = 'Dompet';
  static const String SWITCHER_TRANSACTION_LABEL = 'Transaksi';
  static const String SWITCHER_PROFILE_LABEL = 'Profil';

  /// [Home]
  static String homeGreeting(String name) => 'Halo! $name.';
  static const String HOME_WELCOME_MESSAGE = 'Selamat datang di Waltrack AI';

  /// [Wallet]
  static const String WALLET_TITLE = 'Dompet';
  static const String WALLET_DESCRIPTION = 'Kelola dompet anda dengan lebih mudah dan cepat.';
  static const String WALLET_FORM_ADD_TITLE = 'Tambah Dompet';
  static const String WALLET_FORM_EDIT_TITLE = 'Ubah Dompet';
  static const String WALLET_FORM_NAME_KEY = 'name';
  static const String WALLET_FORM_NAME_LABEL = 'Nama';
  static const String WALLET_FORM_NAME_HINT = 'Masukkan nama';
  static const String WALLET_FORM_BALANCE_KEY = 'balance';
  static const String WALLET_FORM_BALANCE_LABEL = 'Saldo awal';
  static const String WALLET_FORM_BALANCE_HINT = 'Masukkan saldo awal';
  static const String WALLET_FORM_COLOR_KEY = 'color';
  static const String WALLET_FORM_ICON_KEY = 'icon';
  static const String WALLET_SAVED_MESSAGE = 'Dompet berhasil disimpan';

  /// [Transaction]
  static const String TRANSACTION_LIST_TITLE = 'Daftar Transaksi';

  /// [Error]
  static const String ERROR_TITLE = 'Ups! Ada kendala nih.';
  static const String ERROR_EMPTY_DESCRIPTION = 'Tidak ada data yang ditemukan.';
  static const String ERROR_NETWORK_DESCRIPTION = 'Kami mengalami kesulitan memuat data.\nCoba beberapa saat lagi.';

  /// [Click To Action]
  static const String CLICK_TO_ACTION_SAVE = 'Simpan';
  static const String CLICK_TO_ACTION_CANCEL = 'Batal';
  static const String CLICK_TO_ACTION_DELETE = 'Hapus';
  static const String CLICK_TO_ACTION_VIEW = 'Lihat';
  static const String CLICK_TO_ACTION_SEE_MORE = 'Lihat Semua';
  static const String CLICK_TO_ACTION_CLOSE = 'Tutup';
  static const String CLICK_TO_ACTION_SEARCH = 'Cari';
  static const String CLICK_TO_ACTION_FILTER = 'Filter';
  static const String CLICK_TO_ACTION_RESET = 'Reset';

  /// [Icon Color]
  static const String ICON_COLOR_TITLE = 'Ikon dan Warna';
  static const String ICON_COLOR_PICK_HINT = 'Pilih Ikon dan Warna';
  static const String ICON_COLOR_FINANCE = 'Keuangan';
  static const String ICON_COLOR_SHOPPING = 'Belanja';
  static const String ICON_COLOR_HOME_UTILITY = 'Peralatan Rumah';
  static const String ICON_COLOR_TRANSPORT_TRAVEL = 'Transportasi Travel';
  static const String ICON_COLOR_FOOD_DRINK = 'Makanan Minuman';
  static const String ICON_COLOR_HEALTH_LIFESTYLE = 'Kesehatan Lifestyle';
  static const String ICON_COLOR_ENTERTAINMENT = 'Hiburan';
  static const String ICON_COLOR_WORK = 'Kerja';
  static const String ICON_COLOR_OTHER = 'Lainnya';

  /// [Validation]
  static String validatorRequired(String field) => '$field harus diisi';
}
