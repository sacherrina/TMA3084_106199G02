import 'package:flutter/material.dart';

void main() {
  runApp(const MilkyMoonApp());
}

class MilkyMoonApp extends StatelessWidget {
  const MilkyMoonApp({super.key});

  @override
  Widget build(BuildContext context) {
    const matchaGreen = Color(0xFF526B45);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Milky Moon',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF7F7ED),
        colorScheme: ColorScheme.fromSeed(
          seedColor: matchaGreen,
          surface: const Color(0xFFF7F7ED),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: matchaGreen,
          foregroundColor: Colors.white,
        ),
        useMaterial3: true,
      ),
      home: const MenuScreen(),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.local_cafe, size: 28),
            SizedBox(width: 10),
            Text(
              'MILKY MOON',
              style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(22),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE3EBD8),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.eco, color: Color(0xFF526B45), size: 30),
                      SizedBox(height: 10),
                      Text(
                        'A little sip of happiness.',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF405638),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Freshly made, sweetly yours. 🧋',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF586B4D),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 26),
                const Text(
                  'OUR MENU',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF405638),
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(height: 6),
                const Text(
                  'Find your new favourite drink.',
                  style: TextStyle(color: Color(0xFF75856A), fontSize: 14),
                ),
                const SizedBox(height: 12),

                const MenuCard(
                  name: 'Brown Sugar Boba',
                  description: 'Fresh milk, brown sugar and pearls',
                  price: 'RM 9.90',
                  image: 'assets/images/brown_sugar.jpg',
                  color: Color(0xFFB58A66),
                ),

                const MenuCard(
                  name: 'Taro Milk Tea',
                  description: 'Creamy taro with chewy pearls',
                  price: 'RM 8.90',
                  image: 'assets/images/taro_milk.png',
                  color: Color(0xFFB6A5D8),
                ),

                const MenuCard(
                  name: 'Matcha Boba',
                  description: 'Smooth matcha and fresh milk',
                  price: 'RM 10.90',
                  image: 'assets/images/matcha_boba.png',
                  color: Color(0xFF8CA77B),
                ),

                const SizedBox(height: 20),
                const Center(
                  child: Text(
                    'Made with love, one cup at a time ♡',
                    style: TextStyle(
                      color: Color(0xFF617852),
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MenuCard extends StatelessWidget {
  final String name;
  final String description;
  final String price;
  final String image;
  final Color color;

  const MenuCard({
    super.key,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 2,
      shadowColor: const Color(0xFF526B45).withValues(alpha: 0.12),
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: const BorderSide(color: Color(0xFFE6EBDD)),
      ),
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: Image.asset(
                image,
                width: 100,
                height: 110,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 100,
                    height: 110,
                    color: color.withValues(alpha: 0.2),
                    child: Icon(Icons.local_cafe, size: 38, color: color),
                  );
                },
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF405638),
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF7B8871),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF668452),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
