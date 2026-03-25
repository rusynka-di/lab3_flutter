import 'package:flutter/material.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Товари",
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Популярні товари",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Urbanist",
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    ProductCard(
                      imagePath: "assets/images/IMG_4229.JPG",
                      title: "Худі Oversize",
                      price: "799 грн",
                      isHorizontalScroll: true,
                    ),
                    ProductCard(
                      imagePath: "assets/images/IMG_4281.JPG",
                      title: "Пальто жіноче",
                      price: "1499 грн",
                      isHorizontalScroll: true,
                    ),
                    ProductCard(
                      imagePath: "assets/images/IMG_4229.JPG",
                      title: "Светр базовий",
                      price: "699 грн",
                      isHorizontalScroll: true,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Усі товари",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Urbanist",
                ),
              ),

              const SizedBox(height: 20),

              GridView.count(
                crossAxisCount: 3,
                shrinkWrap: true,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                physics: const NeverScrollableScrollPhysics(),
                childAspectRatio: 0.95,
                children: const [
                  ProductCard(
                    imagePath: "assets/images/IMG_4229.JPG",
                    title: "Жакет класичний",
                    price: "1199 грн",
                  ),
                  ProductCard(
                    imagePath: "assets/images/IMG_4281.JPG",
                    title: "Сукня міді",
                    price: "999 грн",
                  ),
                  ProductCard(
                    imagePath: "assets/images/IMG_4229.JPG",
                    title: "Куртка демісезонна",
                    price: "1599 грн",
                  ),
                  ProductCard(
                    imagePath: "assets/images/IMG_4281.JPG",
                    title: "Футболка basic",
                    price: "399 грн",
                  ),
                  ProductCard(
                    imagePath: "assets/images/IMG_4229.JPG",
                    title: "Штани casual",
                    price: "899 грн",
                  ),
                  ProductCard(
                    imagePath: "assets/images/IMG_4281.JPG",
                    title: "Кардиган теплий",
                    price: "1099 грн",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;
  final bool isHorizontalScroll;

  const ProductCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
    this.isHorizontalScroll = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isHorizontalScroll ? 210 : null,
      margin: isHorizontalScroll
          ? const EdgeInsets.only(right: 16)
          : EdgeInsets.zero,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: isHorizontalScroll ? 210 : 230,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Urbanist",
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Color(0xFF5B4FCF),
                    fontWeight: FontWeight.w600,
                    fontFamily: "Urbanist",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}