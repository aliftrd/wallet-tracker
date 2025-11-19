import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_entity.freezed.dart';

@freezed
abstract class WalletEntity with _$WalletEntity {
  const WalletEntity._();

  const factory WalletEntity({
    required int? id,
    required String name,
    required BalanceEntity balance,
    required Color color,
    required IconData icon,
  }) = _WalletEntity;
}

@freezed
abstract class BalanceEntity with _$BalanceEntity {
  const BalanceEntity._();

  const factory BalanceEntity({
    required int original,
    required String formatted,
  }) = _BalanceEntity;
}
