import 'package:aast_books_project/core/common_widgets/app_text_field.dart';
import 'package:aast_books_project/core/network/dio_config.dart';
import 'package:aast_books_project/core/resources/app_button_styles.dart';
import 'package:aast_books_project/core/resources/app_router.dart';
import 'package:aast_books_project/core/resources/app_text_styles.dart';
import 'package:aast_books_project/core/storage/shared_prefs_helper.dart';
import 'package:aast_books_project/features/auth/service/auth_service.dart';
import 'package:aast_books_project/utils/validation/app_validator.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppTextField(
            // validator: (value) => AppValidator.validateEmail(value),
            validator: (value)=>AppValidator.validateField('Email', value),
            label: 'Email',
            hint: 'Your Email',
            controller: _emailController,
          ),
          SizedBox(height: 16),
          AppTextField(
            // validator: (value) => AppValidator.validatePassword(value),
            validator: (value)=>AppValidator.validateField('Password', value),
            label: 'Password',
            hint: 'Your Password',
            isPassword: true,
            controller: _passwordController,
          ),
          SizedBox(height: 16),
          Text(
            'Forget Password?',
            style: AppTextStyles.primaryColor14RobotoMedium.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 24),
          ElevatedButton(
            style: AppButtonStyles.primaryButtonStyle,
            onPressed: () async {
              if (_formKey.currentState!.validate()) {
                debugPrint(
                  'Email ${_emailController.text}, Password ${_passwordController.text}',
                );
                AuthService(
                  DioConfig.getDio(),
                ).login(_emailController.text, _passwordController.text);
                // SharedPreferences sh = await SharedPreferences.getInstance();
                // SharedPrefsHelper(sh).setLoggedIn(true);
                // Navigator.pushReplacementNamed(context, Routes.mainRoute);
              }
            },
            child: Text('Login', style: AppTextStyles.whiteColor16OpenSansBold),
          ),
        ],
      ),
    );
  }
}
