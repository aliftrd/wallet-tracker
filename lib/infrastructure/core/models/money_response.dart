import 'package:waltrack/domain/core/models/money_entity.dart';

class MoneyResponse {
  final int original;
  final String formatted;

  const MoneyResponse({
    required this.original,
    required this.formatted,
  });

  factory MoneyResponse.fromJson(Map<String, dynamic> json) => MoneyResponse(
    original: json['original'],
    formatted: json['formatted'],
  );

  Map<String, dynamic> toJson() => {
    'original': original,
    'formatted': formatted,
  };

  MoneyEntity toEntity() => MoneyEntity(
    original: original,
    formatted: formatted,
  );
}
