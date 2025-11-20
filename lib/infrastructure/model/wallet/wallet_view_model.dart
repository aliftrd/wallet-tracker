import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:waltrack/applications/extension/string_extension.dart';
import 'package:waltrack/domain/entity/wallet/wallet_view_entity.dart';

part 'wallet_view_model.freezed.dart';
part 'wallet_view_model.g.dart';

@freezed
abstract class WalletViewModel with _$WalletViewModel {
  const WalletViewModel._();

  const factory WalletViewModel({
    required int id,
    required String name,
    required String balance,
    required String color,
    required String icon,
  }) = _WalletViewModel;

  factory WalletViewModel.fromJson(Map<String, dynamic> json) => _$WalletViewModelFromJson(json);

  WalletViewEntity toEntity() => WalletViewEntity(
    id: id,
    name: name,
    balance: balance,
    color: color.toColor(),
    icon: icon.toIconData(),
  );
}
