part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.watchAuthStatus() = _WatchAuthStatusEvent;
  const factory AuthEvent.logout() = _LogoutEvent;
}
