import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:waltrack/applications/constant/assets.dart';
import 'package:waltrack/applications/constant/sizes.dart';
import 'package:waltrack/applications/extension/app_theme_extension.dart';
import 'package:waltrack/applications/extension/string_extension.dart';
import 'package:waltrack/presentation/shared/widget/button/custom_button_primary.dart';
import 'package:waltrack/presentation/shared/widget/input/custom_labeled_textinput.dart';

class RegisterPage extends StatefulWidget {
  static const String path = '/register';
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                      'Daftar ke WaltrackAI',
                      textAlign: TextAlign.center,
                      style: context.textTheme.headlineLarge?.copyWith(
                        fontSize: FontSize.s28,
                      ),
                    ),
                    Text(
                      'Buat akun untuk mulai mengelola keuangan Anda.',
                      textAlign: TextAlign.center,
                      style: context.textTheme.bodyLarge,
                    ),
                  ],
                ),
                Column(
                  spacing: Sizes.s10,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomLabeledTextInput(
                      label: 'Email',
                      hintText: 'Enter your email',
                      isRequired: true,
                      controller: emailController,
                    ),
                    // BlocBuilder<RegisterFormBloc, RegisterFormState>(
                    //   builder: (context, state) {
                    //     return CustomLabeledTextInput(
                    //       label: 'Password',
                    //       hintText: 'Enter your password',
                    //       isRequired: true,
                    //       obscureText: true,
                    //       suffixIcon: InkWell(
                    //         splashColor: Colors.transparent,
                    //         highlightColor: Colors.transparent,
                    //         onTap: () {
                    //           context.read<LoginFormBloc>().add(LoginFormEvent.passwordVisibilityChanged(!state.isPasswordVisible));
                    //         },
                    //         child: Icon(state.isPasswordVisible ? Icons.visibility : Icons.visibility_off),
                    //       ),
                    //       controller: passwordController,
                    //     );
                    //   },
                    // ),
                    Text(
                      "Lupa password?",
                      textAlign: TextAlign.end,
                      style: context.textTheme.bodySmall?.copyWith(color: context.color.primary),
                    ),
                  ],
                ),
                CustomButtonPrimary(
                  text: 'Daftar',
                  onPress: () {
                    if (_formKey.currentState!.validate()) {
                      // context.goNamed(HomePage.path);
                      // context.read<LoginBloc>().add(LoginEvent.login(emailController.text, passwordController.text));
                    }
                  },
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: "Sudah punya akun? ", style: context.textTheme.bodySmall),
                      TextSpan(
                        text: "Masuk!",
                        recognizer: TapGestureRecognizer()..onTap = () => context.pop(),
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
    );
  }
}
