import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_view_entity.freezed.dart';

@freezed
abstract class WalletViewEntity with _$WalletViewEntity {
  const WalletViewEntity._();

  const factory WalletViewEntity({
    required int? id,
    required String name,
    required String balance,
    required Color color,
    required IconData icon,
  }) = _WalletViewEntity;
}
