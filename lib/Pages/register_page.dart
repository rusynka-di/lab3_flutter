import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../Components/text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool isLoading = false;

  Future<void> registerUser() async {
    if (passwordController.text.trim() !=
        confirmPasswordController.text.trim()) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Паролі не співпадають"),
        ),
      );
      return;
    }

    try {
      setState(() {
        isLoading = true;
      });

      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      await userCredential.user?.updateDisplayName(nameController.text.trim());

      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Реєстрація успішна"),
        ),
      );

      Navigator.pushNamedAndRemoveUntil(
        context,
        '/main',
        (Route<dynamic> route) => false,
      );
    } on FirebaseAuthException catch (e) {
      String errorMessage = "Помилка реєстрації";

      if (e.code == 'email-already-in-use') {
        errorMessage = "Цей email вже використовується";
      } else if (e.code == 'invalid-email') {
        errorMessage = "Некоректний email";
      } else if (e.code == 'weak-password') {
        errorMessage = "Пароль занадто слабкий";
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
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
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
                    "Реєстрація",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: "Urbanist",
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Створіть акаунт, щоб почати покупки",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF5C5C5C),
                      fontFamily: "Urbanist",
                    ),
                  ),

                  const SizedBox(height: 40),

                  CustomTextField(
                    labelText: "Ім'я",
                    controller: nameController,
                  ),

                  const SizedBox(height: 24),

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

                  const SizedBox(height: 24),

                  CustomTextField(
                    labelText: "Підтвердіть пароль",
                    isObscure: true,
                    controller: confirmPasswordController,
                  ),

                  const SizedBox(height: 30),

                  ElevatedButton(
                    onPressed: isLoading ? null : registerUser,
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
                            "Зареєструватися",
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
                        Navigator.pop(context);
                      },
                      child: RichText(
                        text: const TextSpan(
                          text: "Вже маєте акаунт? ",
                          style: TextStyle(
                            fontFamily: "Urbanist",
                            color: Color(0xFF5C5C5C),
                            fontSize: 16,
                          ),
                          children: [
                            TextSpan(
                              text: "Увійти",
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