import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String selectedSize = "M";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1100),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      height: 550,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/IMG_4281.JPG"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 40),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Пальто Oversize",
                          style: TextStyle(
                            fontSize: 34,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Urbanist",
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 15),
                        const Text(
                          "\$79.00",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF5B4FCF),
                            fontFamily: "Urbanist",
                          ),
                        ),
                        const SizedBox(height: 25),
                        const Text(
                          "Стильне жіноче пальто oversize для щоденного образу. "
                          "Поєднує комфорт, сучасний стиль та універсальність. "
                          "Добре підходить для весняного та осіннього сезону.",
                          style: TextStyle(
                            fontSize: 17,
                            height: 1.6,
                            color: Color(0xFF4F4F4F),
                            fontFamily: "Urbanist",
                          ),
                        ),
                        const SizedBox(height: 35),
                        const Text(
                          "Оберіть розмір",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Urbanist",
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            buildSizeButton("S"),
                            const SizedBox(width: 12),
                            buildSizeButton("M"),
                            const SizedBox(width: 12),
                            buildSizeButton("L"),
                            const SizedBox(width: 12),
                            buildSizeButton("XL"),
                          ],
                        ),
                        const SizedBox(height: 35),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF5B4FCF),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 40,
                              vertical: 18,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: const Text(
                            "Купити зараз",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Urbanist",
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
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

  Widget buildSizeButton(String size) {
    bool isSelected = selectedSize == size;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSize = size;
        });
      },
      child: Container(
        width: 55,
        height: 55,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF5B4FCF) : Colors.white,
          border: Border.all(
            color: isSelected ? const Color(0xFF5B4FCF) : Colors.grey.shade400,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          size,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: isSelected ? Colors.white : Colors.black,
            fontFamily: "Urbanist",
          ),
        ),
      ),
    );
  }
}