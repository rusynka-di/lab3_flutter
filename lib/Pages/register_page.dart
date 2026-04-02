import 'package:flutter/material.dart';
import '../Components/text_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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

                  const CustomTextField(
                    labelText: "Ім'я",
                  ),

                  const SizedBox(height: 24),

                  const CustomTextField(
                    labelText: "Електронна пошта",
                  ),

                  const SizedBox(height: 24),

                  const CustomTextField(
                    labelText: "Пароль",
                    isObscure: true,
                  ),

                  const SizedBox(height: 24),

                  const CustomTextField(
                    labelText: "Підтвердіть пароль",
                    isObscure: true,
                  ),

                  const SizedBox(height: 30),

                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/main',
                        (Route<dynamic> route) => false,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF5B4FCF),
                      minimumSize: const Size(double.infinity, 55),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
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