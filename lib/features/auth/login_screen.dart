import 'package:aast_books_project/core/common_widgets/app_rich_text.dart';
import 'package:aast_books_project/core/resources/app_button_styles.dart';
import 'package:aast_books_project/core/resources/app_text_styles.dart';
import 'package:aast_books_project/features/auth/widgets/auth_header.dart';
import 'package:aast_books_project/features/auth/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AuthHeader(
                authTitle: 'Welcome Back',
                authDescription: 'Sign in to continue',
              ),
              const SizedBox(height: 40),
              LoginForm(),
              SizedBox(height: 24),
              Align(alignment: Alignment.center,
                child: AppRichText(
                  originalText: 'Don\'t have an account? ',
                  highlightedText: 'Sign In',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
