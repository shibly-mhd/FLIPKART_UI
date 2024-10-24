import 'package:flutter/material.dart';

class Grocessiesaccess extends StatelessWidget {
  const Grocessiesaccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Categories"),
        actions: [
          IconButton(
            onPressed: () {
              // Add search functionality here
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // 3 items per row
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.85, // To adjust the height to width ratio
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryItem(
              image: categories[index]['image']!,
              label: categories[index]['label']!,
            );
          },
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String image;
  final String label;

  const CategoryItem({
    super.key,
    required this.image,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: Colors.blue.shade50,
          child: Image.asset(
            'asset/special-offer.png',
            fit: BoxFit.contain,
            height: 50,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

// Sample data
final List<Map<String, String>> categories = [
  {'image': 'assets/top_offers.png', 'label': 'Top Offers'},
  {'image': 'assets/grocery.png', 'label': 'Grocery'},
  {'image': 'assets/mobiles.png', 'label': 'Mobiles'},
  {'image': 'assets/fashion.png', 'label': 'Fashion'},
  {'image': 'assets/electronics.png', 'label': 'Electronics'},
  {'image': 'assets/home.png', 'label': 'Home'},
  {'image': 'assets/personal_care.png', 'label': 'Personal Care'},
  {'image': 'assets/appliances.png', 'label': 'Appliances'},
];
