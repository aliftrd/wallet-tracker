part of 'auth_bloc.dart';

enum AuthStatus {
  initial,
  authenticated,
  unauthenticated,
}

@freezed
sealed class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState({
    @Default(AuthStatus.initial) AuthStatus status,
    UserEntity? user,
  }) = _AuthState;

  bool get isAuthenticated => status == AuthStatus.authenticated;
  bool get isUnauthenticated => status == AuthStatus.unauthenticated;
}
