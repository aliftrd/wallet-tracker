import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:waltrack/applications/di/application_module.dart';
import 'package:waltrack/domain/entity/user/user_entity.dart';
import 'package:waltrack/domain/repository/auth/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState()) {
    on<_WatchAuthStatusEvent>(_onWatchAuthStatus);
    on<_LogoutEvent>(_onLogout);
  }

  final AuthRepository _authRepository = locator<AuthRepository>();

  Future<void> _onWatchAuthStatus(_WatchAuthStatusEvent event, Emitter<AuthState> emit) async {
    await emit.forEach(
      _authRepository.watchAuthStatus(),
      onData: (result) {
        return result.fold(
          (failure) => const AuthState(status: AuthStatus.unauthenticated),
          (user) {
            if (user == null) {
              return const AuthState(status: AuthStatus.unauthenticated);
            }
            return AuthState(status: AuthStatus.authenticated, user: user);
          },
        );
      },
    );
  }

  Future<void> _onLogout(_LogoutEvent event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: AuthStatus.unauthenticated));
  }
}
