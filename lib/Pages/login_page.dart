import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../Components/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isLoading = false;

  Future<void> loginUser() async {
    try {
      setState(() {
        isLoading = true;
      });

      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Вхід успішний"),
        ),
      );

      Navigator.pushReplacementNamed(context, '/main');
    } on FirebaseAuthException catch (e) {
      String errorMessage = "Помилка входу";

      if (e.code == 'invalid-credential') {
        errorMessage = "Невірний email або пароль";
      } else if (e.code == 'invalid-email') {
        errorMessage = "Некоректний email";
      } else if (e.code == 'user-disabled') {
        errorMessage = "Користувача заблоковано";
      }

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errorMessage),
        ),
      );
    } catch (e) {
      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Сталася помилка"),
        ),
      );
    } finally {
      if (mounted) {
        setState(() {
          isLoading = false;
        });
      }
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 500),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),

                  const Text(
                    "Вхід в акаунт",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: "Urbanist",
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Увійдіть, щоб продовжити покупки",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF5C5C5C),
                      fontFamily: "Urbanist",
                    ),
                  ),

                  const SizedBox(height: 40),

                  CustomTextField(
                    labelText: "Електронна пошта",
                    controller: emailController,
                  ),

                  const SizedBox(height: 24),

                  CustomTextField(
                    labelText: "Пароль",
                    isObscure: true,
                    controller: passwordController,
                  ),

                  const SizedBox(height: 30),

                  ElevatedButton(
                    onPressed: isLoading ? null : loginUser,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF5B4FCF),
                      minimumSize: const Size(double.infinity, 55),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: isLoading
                        ? const CircularProgressIndicator(
                            color: Colors.white,
                          )
                        : const Text(
                            "Увійти",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "Urbanist",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                  ),

                  const SizedBox(height: 35),

                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/register');
                      },
                      child: RichText(
                        text: const TextSpan(
                          text: "Ще не маєте акаунта? ",
                          style: TextStyle(
                            fontFamily: "Urbanist",
                            color: Color(0xFF5C5C5C),
                            fontSize: 16,
                          ),
                          children: [
                            TextSpan(
                              text: "Зареєструватися",
                              style: TextStyle(
                                color: Color(0xFF5B4FCF),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
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