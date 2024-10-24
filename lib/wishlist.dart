import 'package:flutter/material.dart';

class wishlist extends StatelessWidget {
  const wishlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Orders'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Search bar and filter button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search your order here',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.filter_list),
                  ),
                ],
              ),
            ),

            // List of orders
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5, // Replace with the number of orders
              itemBuilder: (context, index) {
                return OrderItem(
                  imageUrl:
                      'https://rukminim2.flixcart.com/image/850/1000/l4ln8nk0/mobile/p/h/p/-original-imagfggryyzyvhgw.jpeg?q=20&crop=false', // Replace with actual image URL
                  orderDate: 'Dec 26, 2022', // Replace with actual date
                  productName:
                      'realme C30 (Denim Black, 32 GB)', // Replace with actual product name
                  deliveryStatus: index % 2 == 0
                      ? 'Delivered'
                      : 'Cancelled', // Example for alternating delivery status
                  description:
                      'Free Discovery+ 25% off on annual subscription', // Replace with actual details
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class OrderItem extends StatelessWidget {
  final String imageUrl;
  final String orderDate;
  final String productName;
  final String deliveryStatus;
  final String description;

  const OrderItem({
    required this.imageUrl,
    required this.orderDate,
    required this.productName,
    required this.deliveryStatus,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product image
            Image.network(
              imageUrl,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 16),

            // Order details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '$deliveryStatus on $orderDate',
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    productName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(description),
                ],
              ),
            ),

            // Forward icon
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
    );
  }
}
