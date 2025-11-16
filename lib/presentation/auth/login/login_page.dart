import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waltrack/applications/constant/assets.dart';
import 'package:waltrack/applications/constant/sizes.dart';
import 'package:waltrack/applications/extension/app_theme_extension.dart';
import 'package:waltrack/applications/extension/string_extension.dart';
import 'package:waltrack/applications/extension/form_state_extension.dart';
import 'package:waltrack/presentation/auth/login/bloc/login_form_bloc.dart';
import 'package:waltrack/presentation/auth/register/register_page.dart';
import 'package:waltrack/presentation/home/home_page.dart';
import 'package:waltrack/presentation/shared/button/custom_button_primary.dart';
import 'package:waltrack/presentation/shared/input/custom_labeled_textinput.dart';
import 'package:waltrack/presentation/shared/toast/toastification.dart';

class LoginPage extends StatefulWidget {
  static const String path = '/login';
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final LoginFormBloc _loginBloc;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loginBloc = LoginFormBloc();
  }

  @override
  void didChangeDependencies() {
    _controllerListener();

    super.didChangeDependencies();
  }

  void _controllerListener() {
    emailController.addListener(() => _loginBloc.add(LoginFormEvent.emailChanged(emailController.text)));
    passwordController.addListener(() => _loginBloc.add(LoginFormEvent.passwordChanged(passwordController.text)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocListener<LoginFormBloc, LoginFormState>(
          bloc: _loginBloc,
          listener: (context, state) {
            if (state.isSuccess) {
              context.pushReplacement(HomePage.path);
            } else if (state.isFailure) {
              if (state.errors == null || state.errors!.isEmpty) {
                Toast.showError(
                  context: context,
                  message: state.message ?? 'Login gagal. Silakan coba lagi.',
                );
              }
            }
          },
          child: Form(
            key: _formKey,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: Sizes.s16),
              child: Column(
                spacing: Sizes.s24,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    spacing: Sizes.s10,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Assets.illustrationLogin.toSvg(width: double.infinity, height: 200),
                      Text(
                        'Masuk ke WaltrackAI',
                        textAlign: TextAlign.center,
                        style: context.textTheme.headlineLarge?.copyWith(
                          fontSize: FontSize.s28,
                        ),
                      ),
                      Text(
                        'Kelola keuangan dengan lebih cerdas dan cepat.',
                        textAlign: TextAlign.center,
                        style: context.textTheme.bodyLarge,
                      ),
                    ],
                  ),
                  BlocBuilder<LoginFormBloc, LoginFormState>(
                    bloc: _loginBloc,
                    builder: (context, state) {
                      return Column(
                        spacing: Sizes.s10,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          CustomLabeledTextInput(
                            label: 'Email',
                            hintText: 'Masukkan email anda',
                            isRequired: true,
                            controller: emailController,
                            errorText: state.getErrorText('email'),
                          ),
                          CustomLabeledTextInput(
                            label: 'Password',
                            hintText: 'Masukkan password anda',
                            isRequired: true,
                            controller: passwordController,
                            errorText: state.getErrorText('password'),
                            obscureText: !state.isPasswordVisible,
                            suffixIcon: InkWell(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () => _loginBloc.add(LoginFormEvent.passwordVisibilityChanged(!state.isPasswordVisible)),
                              child: Icon(state.isPasswordVisible ? Icons.visibility : Icons.visibility_off),
                            ),
                          ),
                          Text(
                            "Lupa password?",
                            textAlign: TextAlign.end,
                            style: context.textTheme.bodySmall?.copyWith(color: context.color.primary),
                          ),
                        ],
                      );
                    },
                  ),
                  BlocBuilder<LoginFormBloc, LoginFormState>(
                    bloc: _loginBloc,
                    builder: (context, state) {
                      return CustomButtonPrimary(
                        text: 'Login',
                        isLoading: state.isLoading,
                        onPress: () {
                          if (_formKey.currentState!.validate()) {
                            _loginBloc.add(const LoginFormEvent.login());
                          }
                        },
                      );
                    },
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: "Belum punya akun? ", style: context.textTheme.bodySmall),
                        TextSpan(
                          text: "Daftar sekarang!",
                          recognizer: TapGestureRecognizer()..onTap = () => context.pushNamed(RegisterPage.path),
                          style: context.textTheme.bodySmall?.copyWith(color: context.color.primary),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
