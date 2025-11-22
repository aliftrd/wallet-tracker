import 'package:dartz/dartz.dart';
import 'package:waltrack/applications/extension/color_extension.dart';
import 'package:waltrack/applications/extension/icon_extension.dart';
import 'package:waltrack/domain/entity/wallet/wallet_detail_entity.dart';
import 'package:waltrack/domain/entity/wallet/wallet_view_entity.dart';
import 'package:waltrack/domain/repository/wallet/wallet_repository.dart';
import 'package:waltrack/infrastructure/core/error_handler.dart';
import 'package:waltrack/infrastructure/datasource/wallet/wallet_remote_datasource.dart';
import 'package:waltrack/infrastructure/model/wallet/wallet_form_model.dart';
import 'package:waltrack/presentation/wallet/form/bloc/wallet_form_bloc.dart';

class WalletRepositoryImpl implements WalletRepository {
  final WalletRemoteDatasource _walletRemoteDatasource;

  WalletRepositoryImpl(this._walletRemoteDatasource);

  @override
  Future<Either<Failure, List<WalletViewEntity>>> fetch() async {
    final response = await _walletRemoteDatasource.fetch();
    return response.fold(
      (failure) => left(failure),
      (data) => right(data.map((e) => e.toEntity()).toList()),
    );
  }

  @override
  Future<Either<Failure, WalletDetailEntity>> fetchById(int walletId) async {
    final response = await _walletRemoteDatasource.fetchById(walletId);
    return response.fold(
      (failure) => left(failure),
      (data) => right(data.toEntity()),
    );
  }

  @override
  Future<Either<Failure, WalletViewEntity>> submit(WalletFormData formData) async {
    final isEditMode = formData.id != null;

    final data = WalletFormModel(
      name: formData.name.toString(),
      initialBalance: formData.balance.toString(),
      color: formData.color?.toHex() ?? '',
      icon: formData.icon?.toHex() ?? '',
    );

    final response = switch (isEditMode) {
      true => await _walletRemoteDatasource.update(formData.id!, data),
      false => await _walletRemoteDatasource.create(data),
    };

    return response.fold(
      (failure) => left(failure),
      (data) => right(data.toEntity()),
    );
  }

  @override
  Future<Either<Failure, void>> delete(int walletId) async {
    final response = await _walletRemoteDatasource.delete(walletId);
    return response.fold(
      (failure) => left(failure),
      (data) => right(data),
    );
  }
}
