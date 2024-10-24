import 'package:flutter/material.dart';

class Notifypage extends StatefulWidget {
  const Notifypage({super.key});

  @override
  State<Notifypage> createState() => _NotifypageState();
}

class _NotifypageState extends State<Notifypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(94, 67, 67, 226),
        title: const Text(
          'notification ',
          style: TextStyle(
            color: Color.fromARGB(255, 4, 39, 99),
            fontSize: 23,
            fontWeight: FontWeight.w800,
            decoration: TextDecoration.none,
            letterSpacing: 3,
          ),
        ),
      ),
      body: Row(
        children: [
          Container(
            child: const Column(
              children: [
                Icon(Icons.warning),
                SizedBox(
                  width: 5,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50),
                  child: Text(
                    'you have an issue by your purchase',
                    style: TextStyle(
                      color: Color.fromARGB(255, 192, 15, 15),
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 50),
                  child: Text('please check your order ',
                      style: TextStyle(
                        color: Color.fromARGB(255, 151, 4, 4),
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
