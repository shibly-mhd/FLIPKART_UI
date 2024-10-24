import 'package:flutter/material.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hey! ', style: TextStyle(color: Colors.black, fontSize: 16)),
            Row(
              children: [
                Text('Explore ', style: TextStyle(color: Colors.black)),
                Text('Flipkart Plus',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold)),
                Icon(Icons.star, color: Colors.blue, size: 16),
              ],
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Row(
              children: [
                Text('711',
                    style: TextStyle(color: Colors.black, fontSize: 18)),
                Icon(Icons.monetization_on, color: Colors.amber),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(),

            // Section 1: My Activity
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('My Activity', style: TextStyle(fontSize: 16)),
            ),
            const ListTile(
              leading: Icon(Icons.rate_review_outlined, color: Colors.blue),
              title: Text('Reviews'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const ListTile(
              leading: Icon(Icons.question_answer_outlined, color: Colors.blue),
              title: Text('Questions & Answers'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const Divider(),

            // Section 2: Earn with Flipkart
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Earn with Flipkart', style: TextStyle(fontSize: 16)),
            ),
            const ListTile(
              leading: Icon(Icons.workspace_premium, color: Colors.blue),
              title: Text('Flipkart Creator Studio'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const ListTile(
              leading: Icon(Icons.sell_outlined, color: Colors.blue),
              title: Text('Sell on Flipkart'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const Divider(),

            // Section 3: Feedback & Information
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Feedback & Information',
                  style: TextStyle(fontSize: 16)),
            ),
            const ListTile(
              leading: Icon(Icons.description_outlined, color: Colors.blue),
              title: Text('Terms, Policies and Licenses'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const ListTile(
              leading: Icon(Icons.help_outline, color: Colors.blue),
              title: Text('Browse FAQs'),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            const Divider(),

            // Log Out Button
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(color: Colors.grey),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  child: const Text('Log Out',
                      style: TextStyle(color: Colors.black, fontSize: 16)),
                ),
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Use a fixed index since this is stateless
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
      ),
    );
  }
}
