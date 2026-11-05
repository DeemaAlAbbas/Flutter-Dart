import 'package:flutter/material.dart';
import '../../../shared_widgets/app_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  static const Color velvetColor = Color(0xFF222D52);
  static const Color greyColor = Color(0xFF929292);

  final TextEditingController emailController =
      TextEditingController();

  final TextEditingController passwordController =
      TextEditingController();

  bool obscurePassword = true;

  void onLoginPressed() {
    final String email = emailController.text;
    final String password = passwordController.text;

    print('البريد الإلكتروني: $email');
    print('كلمة المرور: $password');
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  const SizedBox(height: 111),

                  Container(
                    width: 86,
                    height: 86,
                    decoration: BoxDecoration(
                      color: velvetColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'Logo',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 19),

                  const Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    'أدخل بريدك الإلكتروني وكلمة المرور',
                    style: TextStyle(
                      color: greyColor,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 51),

                  SizedBox(
                    height: 45,
                    child: TextField(
                      controller: emailController,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'البريد الإلكتروني',
                        hintStyle: const TextStyle(
                          color: greyColor,
                          fontSize: 12,
                        ),
                        suffixIcon: const Icon(
                          Icons.email_outlined,
                          color: greyColor,
                        ),
                        contentPadding: const EdgeInsets.only(
                          left: 12,
                          right: 12,
                          bottom: 3,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: velvetColor,
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  SizedBox(
                    height: 45,
                    child: TextField(
                      controller: passwordController,
                      obscureText: obscurePassword,
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'كلمة المرور',
                        hintStyle: const TextStyle(
                          color: greyColor,
                          fontSize: 12,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              obscurePassword = !obscurePassword;
                            });
                          },
                          icon: Icon(
                            obscurePassword
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: greyColor,
                          ),
                        ),
                        contentPadding: const EdgeInsets.only(
                          left: 12,
                          right: 12,
                          bottom: 3,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: velvetColor,
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'نسيت كلمة المرور؟',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 12,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  AppButton(
                    text: 'تسجيل الدخول',
                    backgroundColor: velvetColor,
                    onPressed: onLoginPressed,
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
