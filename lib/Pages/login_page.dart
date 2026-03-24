import 'package:flutter/material.dart';
import '../Components/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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

                  const CustomTextField(
                    labelText: "Електронна пошта",
                  ),

                  const SizedBox(height: 24),

                  const CustomTextField(
                    labelText: "Пароль",
                    isObscure: true,
                  ),

                  const SizedBox(height: 30),

                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF5B4FCF),
                      minimumSize: const Size(double.infinity, 55),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
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
                      onPressed: () {},
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