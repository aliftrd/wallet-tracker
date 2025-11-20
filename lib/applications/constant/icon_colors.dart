import 'dart:math';

import 'package:flutter/material.dart';

Color get randomColor => categoryColors[Random().nextInt(categoryColors.length)];

IconData get randomIcon => allIcons[Random().nextInt(allIcons.length)];

List<Color> categoryColors = [
  Colors.red[700]!,
  Colors.red[500]!,
  Colors.red[300]!,
  Colors.pink[700]!,
  Colors.pink[500]!,
  Colors.pink[300]!,
  Colors.purple[700]!,
  Colors.purple[500]!,
  Colors.purple[300]!,
  Colors.deepPurple[700]!,
  Colors.deepPurple[500]!,
  Colors.deepPurple[300]!,
  Colors.indigo[700]!,
  Colors.indigo[500]!,
  Colors.indigo[300]!,
  Colors.blue[700]!,
  Colors.blue[500]!,
  Colors.blue[300]!,
  Colors.lightBlue[700]!,
  Colors.lightBlue[500]!,
  Colors.lightBlue[300]!,
  Colors.cyan[700]!,
  Colors.cyan[500]!,
  Colors.cyan[300]!,
  Colors.teal[700]!,
  Colors.teal[500]!,
  Colors.teal[300]!,
  Colors.green[700]!,
  Colors.green[500]!,
  Colors.green[300]!,
  Colors.lightGreen[700]!,
  Colors.lightGreen[500]!,
  Colors.lightGreen[300]!,
  Colors.orange[700]!,
  Colors.orange[500]!,
  Colors.orange[300]!,
  Colors.deepOrange[700]!,
  Colors.deepOrange[500]!,
  Colors.deepOrange[300]!,
  Colors.brown[700]!,
  Colors.brown[500]!,
  Colors.brown[300]!,
  Colors.blueGrey[700]!,
  Colors.blueGrey[500]!,
  Colors.blueGrey[300]!,
];

List<IconData> allIcons = [
  ...financeIcon,
  ...shoppingIcon,
  ...homeUtilityIcons,
  ...transportTravelIcons,
  ...foodDrinkIcons,
  ...healthLifestyleIcons,
  ...entertainmentIcons,
  ...workIcons,
  ...otherIcons,
];

/// Finance Icon
const List<IconData> financeIcon = [
  Icons.account_balance_wallet,
  Icons.savings,
  Icons.credit_card,
  Icons.atm,
  Icons.payments,
  Icons.attach_money,
  Icons.request_page,
  Icons.account_balance,
  Icons.price_change,
  Icons.price_check,
  Icons.monetization_on,
  Icons.money_off,
  Icons.currency_exchange,
  Icons.euro,
  Icons.currency_pound,
  Icons.currency_rupee,
  Icons.currency_bitcoin,
  Icons.currency_yen,
  Icons.card_giftcard,
  Icons.redeem,
  Icons.ssid_chart,
  Icons.bar_chart,
  Icons.show_chart,
  Icons.stacked_line_chart,
  Icons.pie_chart_outline,
  Icons.percent,
  Icons.calculate,
  Icons.receipt_long,
  Icons.receipt,
  Icons.analytics_outlined,
  Icons.fact_check,
  Icons.note,
  Icons.qr_code_scanner,
  Icons.account_balance_wallet_outlined,
  Icons.point_of_sale,
  Icons.swap_horiz,
  Icons.swap_vert,
  Icons.lock,
];

/// Shopping Icon
const List<IconData> shoppingIcon = [
  Icons.shopping_cart,
  Icons.shopping_bag,
  Icons.shopping_basket,
  Icons.store,
  Icons.local_offer,
  Icons.checkroom,
  Icons.diamond,
  Icons.smartphone,
  Icons.laptop,
  Icons.ondemand_video,
  Icons.headphones,
  Icons.camera_alt,
  Icons.watch,
  Icons.local_shipping,
  Icons.card_giftcard,
  Icons.public,
];

const List<IconData> homeUtilityIcons = [
  Icons.home, // Rumah
  Icons.house_siding, // Rumah lain
  Icons.home_work, // Bangunan
  Icons.business, // Kantor/bangunan
  Icons.chair, // Perabot
  Icons.lightbulb, // Lampu
  Icons.car_repair, // Mobil di garasi
  Icons.kitchen, // Lemari es
  Icons.sports_basketball, // Balon/lampu gantung (mirip)
  Icons.call, // Telepon
  Icons.wifi, // Wi-Fi
  Icons.mail, // Surat
  Icons.flash_on, // Listrik
  Icons.water_drop, // Air
  Icons.ac_unit, // AC
  Icons.door_front_door, // Pintu
  Icons.local_mall, // Troli kecil
  Icons.handyman, // Sekop
  Icons.local_florist, // Tanaman
  Icons.cut, // Gunting
  Icons.plumbing, // Keran
  Icons.build, // Kunci inggris
];

const List<IconData> transportTravelIcons = [
  Icons.directions_car, // Mobil
  Icons.local_taxi, // Taksi
  Icons.directions_bus, // Bus
  Icons.directions_bike, // Sepeda
  Icons.motorcycle, // Motor
  Icons.electric_scooter, // Skuter listrik
  Icons.airplanemode_active, // Pesawat
  Icons.local_shipping, // Truk
  Icons.train, // Kereta
  Icons.directions_boat, // Kapal
  Icons.local_gas_station, // SPBU
  Icons.location_city, // Gedung
  Icons.beach_access, // Pantai
  Icons.park, // Pohon
  Icons.wb_sunny, // Matahari
  Icons.waves, // Ombak
  Icons.sports_bar, // Gelas/Minum
  Icons.luggage, // Koper
  Icons.bed, // Tempat tidur
  Icons.explore, // Kompas
  Icons.map, // Peta
];

const List<IconData> foodDrinkIcons = [
  Icons.restaurant, // Alat makan
  Icons.local_pizza, // Pizza
  Icons.lunch_dining, // Burger
  Icons.local_cafe, // Kopi
  Icons.local_bar, // Gelas wine
  Icons.local_drink, // Minuman
  Icons.icecream, // Es krim
  Icons.rice_bowl, // Nasi
  Icons.set_meal, // Sup
  Icons.cookie, // Kue
];

const List<IconData> healthLifestyleIcons = [
  Icons.fitness_center, // Gym
  Icons.self_improvement, // Yoga
  Icons.directions_run, // Lari
  Icons.spa, // Spa
  Icons.volunteer_activism, // Donasi
  Icons.favorite, // Hati
  Icons.medical_services, // Medis
  Icons.smoking_rooms, // Rokok
  Icons.brush, // Sikat gigi
  Icons.pets, // Hewan peliharaan
  Icons.face, // Wajah senyum
  Icons.sentiment_dissatisfied, // Wajah sedih
];

const List<IconData> entertainmentIcons = [
  Icons.sports_esports, // Game
  Icons.music_note, // Musik
  Icons.movie, // Film
  Icons.sports_soccer, // Sepak bola
  Icons.sports_basketball, // Basket
  Icons.sports_tennis, // Tenis
  Icons.menu_book, // Buku
  Icons.celebration, // Pesta
  Icons.confirmation_num, // Tiket
  Icons.emoji_events, // Mahkota/juara
  Icons.sports_kabaddi, // Aktivitas
];

const List<IconData> workIcons = [
  Icons.work, // Pekerjaan
  Icons.school, // Pendidikan
  Icons.apartment, // Gedung
  Icons.build, // Peralatan
  Icons.science, // Sains
  Icons.bug_report, // Nuklir/riset
  Icons.calendar_today, // Kalender
  Icons.access_alarm, // Alarm
  Icons.track_changes, // Target
  Icons.rocket_launch, // Roket
];

const List<IconData> otherIcons = [
  Icons.shield, // Keamanan
  Icons.all_inclusive, // Tak terbatas
  Icons.brush, // Seni
  Icons.palette, // Palet warna
  Icons.thumb_up, // Like
  Icons.thumb_down, // Dislike
  Icons.more_horiz, // Lainnya
];
