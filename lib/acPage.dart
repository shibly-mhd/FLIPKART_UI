// import 'package:enefty_icons/enefty_icons.dart';
import 'package:flipkart_ecommerce/order.dart';
import 'package:flipkart_ecommerce/wishlist.dart';
import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import 'package:kart_app/orders.dart';

class Acpage extends StatefulWidget {
  const Acpage({super.key});

  @override
  State<Acpage> createState() => _ProfileState();
}

class _ProfileState extends State<Acpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hey! MUHAMMED SHIBLY',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Row(
                children: [
                  Text(
                    'Explore',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),

                  //sized box needed this plot
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Flipkart Plus',
                    style: TextStyle(
                        fontSize: 16, color: Color.fromARGB(255, 3, 49, 255)),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  )
                ],
              ),
              const Divider(
                thickness: 3,
              ),
              //sized box needed this plot
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Orders()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(),
                              child: Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.check,
                                      //  an icon is here so be look care fully

                                      color: Color.fromARGB(255, 6, 69, 242),
                                    ),
                                    Text(
                                      'Orders',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color.fromARGB(255, 3, 2, 2)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          //sized box needed this plot
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const wishlist()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.check,
                                      color: Color.fromARGB(255, 6, 69, 242),
                                    ),
                                    Text(
                                      'WishList',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color.fromARGB(255, 3, 2, 2)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      //sized box needed this plot
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: 50,
                              width: 150,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.check,
                                    color: Color.fromARGB(255, 6, 69, 242),
                                  ),
                                  Text(
                                    'Coupons',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromARGB(255, 3, 2, 2)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          //sized box needed this plot
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  border: Border.all(
                                    color: Colors.grey,
                                  ),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.live_help_outlined,
                                      color: Color.fromARGB(255, 6, 69, 242),
                                    ),
                                    Text(
                                      'HelpCare',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color.fromARGB(255, 3, 2, 2)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const Divider(
                thickness: 3,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Credit Options',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    //sized box needed this plot
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(Icons.calendar_month_outlined,
                              color: Color.fromARGB(255, 6, 69, 242), size: 30),
                        ),
                        //sized box needed this plot
                        const SizedBox(
                          height: 10,
                        ),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Flipkart Pay Later',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 4.0),
                                child: Text(
                                  'Complete application & get ₹500* gift card',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Icon(Icons.arrow_forward_ios,
                            color: Colors.black, size: 16),
                      ],
                    ),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(Icons.credit_card,
                              color: Color.fromARGB(255, 6, 69, 242), size: 30),
                        ),
                        //sized box needed this plot
                        const SizedBox(
                          height: 10,
                        ),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Flipkart Axis Bank Credit Card',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 4.0),
                                child: Text(
                                  'Get Wonderful Offers',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Icon(Icons.arrow_forward_ios,
                            color: Colors.black, size: 16),
                      ],
                    ),
                    const Divider(
                      thickness: 3,
                    ),
                    Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset(
                              'asset/credit-card.png',
                              fit: BoxFit.cover,
                              height: 120,
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: 4,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Level Up and win rewards worth Rs.10000',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                'Only 1 more tasks to complete this level',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                              Icon(Icons.arrow_forward_ios,
                                  color: Colors.black, size: 16)
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      thickness: 3,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Account Settings',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          //sized box needed this plot
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: const Icon(Icons.star,
                                    color: Color.fromARGB(255, 16, 63, 234),
                                    size: 30),
                              ),
                              //sized box needed this plot
                              const SizedBox(
                                height: 10,
                              ),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Flipkart Plus',
                                      style: TextStyle(
                                        fontSize: 16,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(Icons.arrow_forward_ios,
                                  color: Colors.black, size: 16),
                            ],
                          ),
                          //sized box needed this plot
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: const Icon(Icons.check,
                                    color: Color.fromARGB(255, 16, 63, 234),
                                    size: 30),
                              ),
                              //sized box needed this plot
                              const SizedBox(
                                height: 10,
                              ),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Edit Profile',
                                      style: TextStyle(
                                        fontSize: 16,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(Icons.arrow_forward_ios,
                                  color: Colors.black, size: 16),
                            ],
                          ),
                          //sized box needed this plot
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: const Icon(Icons.check,
                                    color: Color.fromARGB(255, 16, 63, 234),
                                    size: 30),
                              ),
                              //sized box needed this plot
                              const SizedBox(
                                height: 10,
                              ),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Saved Credit/Gift cards',
                                      style: TextStyle(
                                        fontSize: 16,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(Icons.arrow_forward_ios,
                                  color: Colors.black, size: 16),
                            ],
                          ),
                          //sized box needed this plot
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: const Icon(Icons.location_on,
                                    color: Color.fromARGB(255, 16, 63, 234),
                                    size: 30),
                              ),
                              //sized box needed this plot
                              const SizedBox(
                                height: 10,
                              ),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Saved Address',
                                      style: TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(Icons.arrow_forward_ios,
                                  color: Colors.black, size: 16),
                            ],
                          ),
                          //sized box needed this plot
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: const Icon(Icons.language,
                                    color: Color.fromARGB(255, 16, 63, 234),
                                    size: 30),
                              ),
                              //sized box needed this plot
                              const SizedBox(
                                height: 10,
                              ),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Languages',
                                      style: TextStyle(
                                        fontSize: 16,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(Icons.arrow_forward_ios,
                                  color: Colors.black, size: 16),
                            ],
                          ),
                          //sized box needed this plot
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: const Icon(Icons.notifications_off,
                                    color: Color.fromARGB(255, 16, 63, 234),
                                    size: 30),
                              ),
                              //sized box needed this plot
                              const SizedBox(
                                height: 10,
                              ),
                              const Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Notification Settings',
                                      style: TextStyle(
                                        fontSize: 16,
                                        // fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(Icons.arrow_forward_ios,
                                  color: Colors.black, size: 16),
                            ],
                          ),
                          //sized box needed this plot
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(
                            thickness: 3,
                          ),
                          //sized box needed this plot
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'My Activity',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                //sized box needed this plot
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: const Icon(Icons.rate_review,
                                          color:
                                              Color.fromARGB(255, 16, 63, 234),
                                          size: 30),
                                    ),
                                    //sized box needed this plot
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Reviews',
                                            style: TextStyle(
                                              fontSize: 16,
                                              // fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Icon(Icons.arrow_forward_ios,
                                        color: Colors.black, size: 16),
                                  ],
                                ),
                                //sized box needed this plot
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: const Icon(Icons.check,
                                          color:
                                              Color.fromARGB(255, 16, 63, 234),
                                          size: 30),
                                    ),
                                    //sized box needed this plot
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Questions and Answers',
                                            style: TextStyle(
                                              fontSize: 16,
                                              // fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Icon(Icons.arrow_forward_ios,
                                        color: Colors.black, size: 16),
                                  ],
                                ),
                                //sized box needed this plot
                                const SizedBox(
                                  height: 10,
                                ),
                                const Divider(
                                  thickness: 3,
                                ),
                                //sized box needed this plot,
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Earn with Flipkart',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      //sized box needed this plot,
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {},
                                            child: const Icon(
                                                Icons.star_border_rounded,
                                                color: Color.fromARGB(
                                                    255, 16, 63, 234),
                                                size: 30),
                                          ),
                                          //sized box needed this plot,
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Flipkart Creator Studio',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    // fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Icon(Icons.arrow_forward_ios,
                                              color: Colors.black, size: 16),
                                        ],
                                      ),
                                      //sized box needed this plot,
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {},
                                            child: const Icon(Icons.check,
                                                color: Color.fromARGB(
                                                    255, 16, 63, 234),
                                                size: 30),
                                          ),
                                          //sized box needed this plot
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          const Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Sell on Flipkart',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    // fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Icon(Icons.arrow_forward_ios,
                                              color: Colors.black, size: 16),
                                        ],
                                      ),
                                      //sized box needed this plot,
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      const Divider(
                                        thickness: 3,
                                      ),
                                      //sized box needed this plot
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Feedback & Information',
                                              style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            //sized box needed this plot
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                GestureDetector(
                                                  onTap: () {},
                                                  child: const Icon(
                                                      Icons.policy,
                                                      color: Color.fromARGB(
                                                          255, 16, 63, 234),
                                                      size: 30),
                                                ),
                                                //sized box needed this plot
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Terms,Policies & Licenses',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          // fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const Icon(
                                                    Icons.arrow_forward_ios,
                                                    color: Colors.black,
                                                    size: 16),
                                              ],
                                            ),
                                            //sized box needed this plot
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                GestureDetector(
                                                  onTap: () {},
                                                  child: const Icon(
                                                      //sized box needed this plot
                                                      Icons.check_box,
                                                      color: Color.fromARGB(
                                                          255, 16, 63, 234),
                                                      size: 30),
                                                ),
                                                //sized box needed this plot
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                const Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Browse FAQs',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          // fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                const Icon(
                                                    Icons.arrow_forward_ios,
                                                    color: Colors.black,
                                                    size: 16),
                                              ],
                                            ),
                                            const Divider(
                                              thickness: 3,
                                            ),
                                            //sized box needed this plot
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Container(
                                              height: 50,
                                              width: 400,
                                              decoration: BoxDecoration(
                                                color: Colors.yellow[700],
                                                border: Border.all(
                                                  color: Colors.grey,
                                                ),
                                                borderRadius:
                                                    const BorderRadius.all(
                                                  Radius.circular(10),
                                                ),
                                              ),
                                              child: const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Text(
                                                    'Log Out',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Color.fromARGB(
                                                            255, 3, 2, 2)),
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
                              ],
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
    );
  }
}
