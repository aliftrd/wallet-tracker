import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_detail_entity.freezed.dart';

@freezed
abstract class WalletDetailEntity with _$WalletDetailEntity {
  const WalletDetailEntity._();

  const factory WalletDetailEntity({
    required int id,
    required String name,
    required int balance,
    required Color color,
    required IconData icon,
  }) = _WalletDetailEntity;
}
