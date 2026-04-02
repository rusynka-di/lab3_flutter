import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isSmallScreen = screenWidth < 900;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        color: const Color(0xFFE7D24C),
        child: isSmallScreen
            ? SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 30,
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),

                      const Text(
                        "ДАВАЙТЕ ДОСЛІДЖУВАТИ\nУНІКАЛЬНИЙ ОДЯГ.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          height: 1.2,
                          fontFamily: "Urbanist",
                        ),
                      ),

                      const SizedBox(height: 20),

                      const Text(
                        "Живіть модою та створюйте свій стиль",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: "Urbanist",
                        ),
                      ),

                      const SizedBox(height: 30),

                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF5B4FCF),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                            vertical: 18,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          "Купити зараз",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: "Urbanist",
                          ),
                        ),
                      ),

                      const SizedBox(height: 30),

                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/detail');
                        },
                        child: Container(
                          width: 280,
                          height: 360,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: const DecorationImage(
                              image: AssetImage("assets/images/IMG_4229.JPG"),
                              fit: BoxFit.cover,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 20,
                                offset: Offset(0, 10),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "ДАВАЙТЕ\nДОСЛІДЖУВАТИ\nУНІКАЛЬНИЙ\nОДЯГ",
                            style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              height: 1.1,
                              fontFamily: "Urbanist",
                            ),
                          ),

                          const SizedBox(height: 20),

                          const Text(
                            "Живіть модою та створюйте свій стиль",
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Urbanist",
                            ),
                          ),

                          const SizedBox(height: 30),

                          ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/detail');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF5B4FCF),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30,
                                vertical: 18,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: const Text(
                              "Купити зараз",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: "Urbanist",
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Expanded(
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/detail');
                          },
                          child: Container(
                            width: 400,
                            height: 450,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/IMG_4229.JPG"),
                                fit: BoxFit.cover,
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black26,
                                  blurRadius: 20,
                                  offset: Offset(0, 10),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}