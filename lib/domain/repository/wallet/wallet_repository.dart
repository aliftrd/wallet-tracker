import 'package:dartz/dartz.dart';
import 'package:waltrack/domain/entity/wallet/wallet_detail_entity.dart';
import 'package:waltrack/domain/entity/wallet/wallet_view_entity.dart';
import 'package:waltrack/infrastructure/core/error_handler.dart';
import 'package:waltrack/presentation/wallet/form/bloc/wallet_form_bloc.dart';

abstract class WalletRepository {
  Future<Either<Failure, List<WalletViewEntity>>> fetch();
  Future<Either<Failure, WalletDetailEntity>> fetchById(int walletId);
  Future<Either<Failure, WalletViewEntity>> submit(WalletFormData formData);
  Future<Either<Failure, void>> delete(int walletId);
}
