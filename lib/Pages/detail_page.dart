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
    double screenWidth = MediaQuery.of(context).size.width;
    bool isSmallScreen = screenWidth < 900;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Деталі товару",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: "Urbanist",
          ),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: isSmallScreen
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 420,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: const DecorationImage(
                          image: AssetImage("assets/images/IMG_4281.JPG"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    const Text(
                      "Пальто Oversize",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: "Urbanist",
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "1499 грн",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF5B4FCF),
                        fontFamily: "Urbanist",
                      ),
                    ),
                    const SizedBox(height: 25),
                    const Text(
                      "Стильне жіноче пальто oversize для щоденного образу. "
                      "Підходить для весняного та осіннього сезону. "
                      "Поєднує комфорт, сучасний вигляд та універсальність.",
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.6,
                        color: Color(0xFF4F4F4F),
                        fontFamily: "Urbanist",
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      "Доступні розміри",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Urbanist",
                      ),
                    ),
                    const SizedBox(height: 15),
                    Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: [
                        buildSizeBox("S"),
                        buildSizeBox("M"),
                        buildSizeBox("L"),
                        buildSizeBox("XL"),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Обраний розмір: $selectedSize",
                      style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xFF5B4FCF),
                        fontFamily: "Urbanist",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF5B4FCF),
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        "Купити зараз",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: "Urbanist",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Категорія: Жіночий одяг",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontFamily: "Urbanist",
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Колір: Сірий",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                        fontFamily: "Urbanist",
                      ),
                    ),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        height: 500,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/IMG_4281.JPG"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 30),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Пальто Oversize",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontFamily: "Urbanist",
                            ),
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            "1499 грн",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF5B4FCF),
                              fontFamily: "Urbanist",
                            ),
                          ),
                          const SizedBox(height: 25),
                          const Text(
                            "Стильне жіноче пальто oversize для щоденного образу. "
                            "Підходить для весняного та осіннього сезону. "
                            "Поєднує комфорт, сучасний вигляд та універсальність.",
                            style: TextStyle(
                              fontSize: 16,
                              height: 1.6,
                              color: Color(0xFF4F4F4F),
                              fontFamily: "Urbanist",
                            ),
                          ),
                          const SizedBox(height: 30),
                          const Text(
                            "Доступні розміри",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Urbanist",
                            ),
                          ),
                          const SizedBox(height: 15),
                          Row(
                            children: [
                              buildSizeBox("S"),
                              const SizedBox(width: 12),
                              buildSizeBox("M"),
                              const SizedBox(width: 12),
                              buildSizeBox("L"),
                              const SizedBox(width: 12),
                              buildSizeBox("XL"),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "Обраний розмір: $selectedSize",
                            style: const TextStyle(
                              fontSize: 16,
                              color: Color(0xFF5B4FCF),
                              fontFamily: "Urbanist",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 30),
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF5B4FCF),
                              minimumSize: const Size(220, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: const Text(
                              "Купити зараз",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: "Urbanist",
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            "Категорія: Жіночий одяг",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontFamily: "Urbanist",
                            ),
                          ),
                          const SizedBox(height: 8),
                          const Text(
                            "Колір: Сірий",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                              fontFamily: "Urbanist",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }

  Widget buildSizeBox(String size) {
    bool isSelected = selectedSize == size;

    return InkWell(
      onTap: () {
        setState(() {
          selectedSize = size;
        });
      },
      borderRadius: BorderRadius.circular(10),
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
            fontFamily: "Urbanist",
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}