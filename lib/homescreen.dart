import 'package:carousel_slider/carousel_slider.dart';
import 'package:flipkart_ecommerce/grocessiesAccess.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Homescreen()));
                    },
                    label: const Text('FLIPKART'),
                    icon: const Icon(Icons.shopping_bag),
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(width: 1),
                      backgroundColor: Colors.blue,
                      iconColor: Colors.yellow,
                    )),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Grocessiesaccess()));
                  },
                  label: const Text(
                    'GROCERY',
                    style: TextStyle(color: Colors.black),
                  ),
                  icon: const Icon(Icons.shopping_cart),
                  style: ElevatedButton.styleFrom(
                    side: const BorderSide(width: 1),
                    backgroundColor: const Color.fromARGB(255, 212, 195, 195),
                    iconColor: Colors.yellow,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(height: 5),
                Container(
                  padding: const EdgeInsets.only(right: 20),
                  child: Row(
                    children: [
                      const SizedBox(width: 10),
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            Text(
                              'BRAND MALL',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 8),
                            ),
                            Switch(value: false, onChanged: null),
                          ],
                        ),
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search for products',
                            prefixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                CarouselSlider(
                  items: [
                    SizedBox(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        'asset/book4.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        'asset/macbook.jpeg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 250,
                      width: MediaQuery.of(context).size.width,
                      child: Image.asset(
                        'asset/pococ55.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          'asset/realme c35.webp',
                          fit: BoxFit.cover,
                        )),
                    SizedBox(
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          'asset/s23 ultra.jpg',
                          fit: BoxFit.cover,
                        )),
                    SizedBox(
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          'asset/16 pro.jpg',
                          fit: BoxFit.cover,
                        )),
                  ],
                  options: CarouselOptions(
                    height: 250,
                    autoPlayInterval: const Duration(seconds: 3),
                    autoPlay: true,
                    scrollDirection: Axis.horizontal,
                    enableInfiniteScroll: false,
                    pauseAutoPlayOnTouch: true,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 113, 230, 160),
                              radius: 50,
                              backgroundImage:
                                  AssetImage("asset/supercoin.png"),
                            ),
                            Text('super coin '),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color.fromARGB(255, 0, 32, 13),
                              radius: 50,
                              backgroundImage: AssetImage('asset/coupon.png'),
                            ),
                            Text('coupons '),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor: Color.fromARGB(255, 63, 70, 66),
                              radius: 50,
                              backgroundImage: AssetImage('asset/add.png'),
                            ),
                            Text('Add '),
                          ],
                        ),
                        Column(
                          children: [
                            CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 207, 184, 54),
                              radius: 50,
                              backgroundImage: AssetImage('asset/atm-card.png'),
                            ),
                            Text('credit '),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Aligning images like the ones in your screenshot
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: const Color.fromARGB(255, 228, 214, 174),
                    height: 250,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          margin: const EdgeInsets.all(9),
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'asset/1.png',
                                fit: BoxFit.cover,
                                height: 100,
                                width: 150,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Laptop Deals',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'From ₹14,990',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(9),
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'asset/2.png',
                                fit: BoxFit.cover,
                                height: 100,
                                width: 150,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Extra ₹75 Off',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Sale is Live',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(9),
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: Colors.grey.shade300),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'asset/3.png',
                                fit: BoxFit.cover,
                                height: 100,
                                width: 150,
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'BT Calling | 1.83"',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Sale Price ₹1,499',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
