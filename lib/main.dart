import 'package:flutter/material.dart';
import 'package:grocery_shop_app/features/model/card_model.dart';
import 'package:grocery_shop_app/features/pages/intro_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (context) => CardModel(),
      child: const MaterialApp(
      debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}
