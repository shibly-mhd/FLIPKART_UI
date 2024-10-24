import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
        actions: const [
          TabBar(
            tabs: [
              Tab(text: 'Flipkart (5)'),
              Tab(text: 'Grocery'),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Delivery Information
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const Text('Deliver to:muhamemed shibly 676317 '),
                  const SizedBox(width: 8),
                  const Text('HOME'),
                  const SizedBox(width: 8),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Change'),
                  ),
                ],
              ),
            ),
            // Product List
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 2, // Replace with actual product count
              itemBuilder: (context, index) {
                return const ProductItem();
              },
            ),
            // Total
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Total: ₹4,840'),
                    ],
                  ),
                ],
              ),
            ),

            // Place Order Button
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {},
                child: const Text('Place Order'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Product Item Widget
class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image
            Image.network(
              'https://www.shutterstock.com/image-vector/vector-single-cartoon-illustration-denim-260nw-1171726540.jpg', // Replace with actual image URL
              width: 100,
              height: 100,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'KETCH Full Men Jacket',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const StarRating(rating: 4.5),
                  Row(
                    children: [
                      const Text('Qty: 1'),
                      const SizedBox(width: 8),
                      DropdownButton<int>(
                        value: 1,
                        onChanged:
                            (value) {}, // Implement quantity change logic
                        items: [1, 2, 3, 4, 5]
                            .map((e) => DropdownMenuItem<int>(
                                  value: e,
                                  child: Text(e.toString()),
                                ))
                            .toList(),
                      ),
                    ],
                  ),
                  const Text('61% off ₹3,149 ₹1,200'),
                  const Text('4 offers applied · 2 offers available'),
                  const Text('Delivery by Thu Mar 9 | FREE Delivery'),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Column(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.delete),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// StarRating Widget (you can implement this using a rating bar or custom icons)
class StarRating extends StatelessWidget {
  final double rating;

  const StarRating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        5,
        (index) => Icon(
          index < rating ? Icons.star : Icons.star_border,
          color: Colors.yellow,
        ),
      ),
    );
  }
}









// import 'package:flipkart_ecommerce/grocessiesAccess.dart';
// import 'package:flipkart_ecommerce/order.dart';
// import 'package:flutter/material.dart';

// class Cart extends StatelessWidget {
//   const Cart({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton.icon(
//                     onPressed: () {
//                       Navigator.pop(context,
//                           MaterialPageRoute(builder: (context) => Orders()));
//                     },
//                     label: const Text('ORDER'),
//                     icon: const Icon(Icons.shopping_bag),
//                     style: ElevatedButton.styleFrom(
//                       side: const BorderSide(width: 1),
//                       backgroundColor: Colors.blue,
//                       iconColor: Colors.yellow,
//                     )),
//                 ElevatedButton.icon(
//                   onPressed: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const Grocessiesaccess()));
//                   },
//                   label: const Text(
//                     'GROCERY',
//                     style: TextStyle(color: Colors.black),
//                   ),
//                   icon: const Icon(Icons.shopping_cart),
//                   style: ElevatedButton.styleFrom(
//                     side: const BorderSide(width: 1),
//                     backgroundColor: const Color.fromARGB(255, 212, 195, 195),
//                     iconColor: Colors.yellow,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Product Image
//             Image.asset(
//               'asset/s23 ultra.jpg', // Replace with actual image URL
//               height: 20,
//               width: double.infinity,
//               fit: BoxFit.cover,
//             ),

//             // Product Details
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     'KETCH mens wear Jacket',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const Row(
//                     children: [
//                       Text(
//                         '₹1,200',
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       SizedBox(width: 8),
//                       Text(
//                         '61% off ₹3,149',
//                         style: TextStyle(
//                           decoration: TextDecoration.lineThrough,
//                           color: Colors.grey,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const StarRating(rating: 4.5),
//                   const Text('Size: S'),
//                   Row(
//                     children: [
//                       const Text('Qty:'),
//                       const SizedBox(width: 8),
//                       DropdownButton<int>(
//                         value: 1,
//                         onChanged:
//                             (value) {}, // Implement quantity change logic
//                         items: [1, 2, 3, 4, 5]
//                             .map((e) => DropdownMenuItem<int>(
//                                   value: e,
//                                   child: Text(e.toString()),
//                                 ))
//                             .toList(),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 16),
//                   // Delivery Information
//                   const Text('Delivery by Thu Mar 9 | FREE Delivery'),
//                   const SizedBox(height: 16),
//                   // Product Actions
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       ElevatedButton(
//                         onPressed: () {}, // Implement "Save for later" logic
//                         child: const Text('Save for later'),
//                       ),
//                       ElevatedButton(
//                         onPressed: () {},
//                         child: const Text('Remove'),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Custom StarRating widget (you can implement this using a rating bar or custom icons)
// class StarRating extends StatelessWidget {
//   final double rating;

//   const StarRating({super.key, required this.rating});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: List.generate(
//         5,
//         (index) => Icon(
//           index < rating ? Icons.star : Icons.star_border,
//           color: Colors.yellow,
//         ),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';

// class Cart extends StatefulWidget {
//   @override
//   _CartState createState() => _CartState();
// }

// class _CartState extends State<Cart> {
//   int _currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text('Hey! IRFAN HABEEB',
//                 style: TextStyle(color: Colors.black, fontSize: 16)),
//             Row(
//               children: [
//                 Text('Explore ', style: TextStyle(color: Colors.black)),
//                 Text('Flipkart Plus',
//                     style: TextStyle(
//                         color: Colors.blue, fontWeight: FontWeight.bold)),
//                 Icon(Icons.star, color: Colors.blue, size: 16),
//               ],
//             ),
//           ],
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 20.0),
//             child: Row(
//               children: [
//                 Text('711',
//                     style: TextStyle(color: Colors.black, fontSize: 18)),
//                 Icon(Icons.monetization_on, color: Colors.amber),
//               ],
//             ),
//           )
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Divider(),

//             // Section 1: My Activity
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text('My Activity', style: TextStyle(fontSize: 16)),
//             ),
//             ListTile(
//               leading: Icon(Icons.rate_review_outlined, color: Colors.blue),
//               title: Text('Reviews'),
//               trailing: Icon(Icons.arrow_forward_ios),
//             ),
//             ListTile(
//               leading: Icon(Icons.question_answer_outlined, color: Colors.blue),
//               title: Text('Questions & Answers'),
//               trailing: Icon(Icons.arrow_forward_ios),
//             ),
//             Divider(),

//             // Section 2: Earn with Flipkart
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text('Earn with Flipkart', style: TextStyle(fontSize: 16)),
//             ),
//             ListTile(
//               leading: Icon(Icons.workspace_premium, color: Colors.blue),
//               title: Text('Flipkart Creator Studio'),
//               trailing: Icon(Icons.arrow_forward_ios),
//             ),
//             ListTile(
//               leading: Icon(Icons.sell_outlined, color: Colors.blue),
//               title: Text('Sell on Flipkart'),
//               trailing: Icon(Icons.arrow_forward_ios),
//             ),
//             Divider(),

//             // Section 3: Feedback & Information
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: Text('Feedback & Information',
//                   style: TextStyle(fontSize: 16)),
//             ),
//             ListTile(
//               leading: Icon(Icons.description_outlined, color: Colors.blue),
//               title: Text('Terms, Policies and Licenses'),
//               trailing: Icon(Icons.arrow_forward_ios),
//             ),
//             ListTile(
//               leading: Icon(Icons.help_outline, color: Colors.blue),
//               title: Text('Browse FAQs'),
//               trailing: Icon(Icons.arrow_forward_ios),
//             ),
//             Divider(),

//             // Log Out Button
//             Center(
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: ElevatedButton(
//                   onPressed: () {},
//                   style: ElevatedButton.styleFrom(
//                       backgroundColor: Colors.white,
//                       side: BorderSide(color: Colors.grey),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(5))),
//                   child: Text('Log Out',
//                       style: TextStyle(color: Colors.black, fontSize: 16)),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),

//       // Bottom Navigation Bar
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//         selectedItemColor: Colors.blue,
//         unselectedItemColor: Colors.grey,
//         showUnselectedLabels: true,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.category),
//             label: 'Categories',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.notifications),
//             label: 'Notifications',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.account_circle),
//             label: 'Account',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_cart),
//             label: 'Cart',
//           ),
//         ],
//       ),
//     );
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: Cart(),
//   ));
// }
