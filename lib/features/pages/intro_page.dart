import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 80, left: 80, right: 80, top: 100),
            child: Image.asset('assets/avocado.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              'We deliver groceries at your doorstep',
              style: GoogleFonts.notoSerif(fontSize: 35, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Fresh items every day',
            style: TextStyle(color: Colors.grey[600]),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context) {
              return const HomePage();
            }, )),
            child: Container(
              decoration: BoxDecoration(color: Colors.deepPurple, borderRadius: BorderRadius.circular(15)),
              child: const Padding(
                padding: EdgeInsets.all(24.0),
                child: Text(
                  'Get Started',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
