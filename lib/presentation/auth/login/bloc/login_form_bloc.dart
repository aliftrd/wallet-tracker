import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:waltrack/applications/di/application_module.dart';
import 'package:waltrack/applications/extension/form_state_extension.dart';
import 'package:waltrack/domain/repository/auth/auth_repository.dart';

part 'login_form_event.dart';
part 'login_form_state.dart';
part 'login_form_bloc.freezed.dart';

class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  LoginFormBloc() : super(const LoginFormState()) {
    on<_EmailChangedEvent>(_onEmailChanged);
    on<_PasswordChangedEvent>(_onPasswordChanged);
    on<_PasswordVisibilityChangedEvent>(_onPasswordVisibilityChanged);
    on<_LoginEvent>(_onLogin);
  }

  final AuthRepository _authRepository = locator<AuthRepository>();

  Future<void> _onEmailChanged(_EmailChangedEvent event, Emitter<LoginFormState> emit) async {
    emit(
      state.copyWith(
        form: state.form.copyWith(email: event.email),
        message: "Berhasil",
      ),
    );
  }

  Future<void> _onPasswordChanged(_PasswordChangedEvent event, Emitter<LoginFormState> emit) async {
    emit(state.copyWith(form: state.form.copyWith(password: event.password)));
  }

  Future<void> _onPasswordVisibilityChanged(_PasswordVisibilityChangedEvent event, Emitter<LoginFormState> emit) async {
    emit(state.copyWith(isPasswordVisible: event.isVisible));
  }

  Future<void> _onLogin(_LoginEvent event, Emitter<LoginFormState> emit) async {
    emit(state.copyWith(status: SubmissionStatus.loading, message: null, errors: {}));

    final result = await _authRepository.login(state.form.email, state.form.password);
    result.fold(
      (failure) => emit(state.copyWith(status: SubmissionStatus.failure, message: failure.message, errors: failure.errors)),
      (user) => emit(state.copyWith(status: SubmissionStatus.success)),
    );
  }
}
