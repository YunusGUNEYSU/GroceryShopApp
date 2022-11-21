import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop_app/features/model/card_model.dart';
import 'package:provider/provider.dart';

import '../components/grocery_item_tile.dart';
import 'card_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:FloatingActionButton(onPressed:() =>Navigator.push(context, MaterialPageRoute(builder: (context) {
        return const CartPage() ;
      },)), 
      backgroundColor: Colors.black,
      child: const Icon(Icons.shopping_bag),
      
      
      ) ,
      body: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 48,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text('Hello'),
          ),
          const SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              "Let's order fresh items for you",
              style: GoogleFonts.notoSerif(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Divider(thickness: 4),
          ),
          const SizedBox(
            height: 24,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Fresh Items',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Expanded(
              child: Consumer<CardModel>(builder:(context, value, child) {
                return GridView.builder(
                   itemCount: value.shopItem.length,
            
                   padding: const EdgeInsets.all(12),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1/1.3
                      ), 
                    itemBuilder: (context, index) {
                      return  GroceryItemTile(
                          itemName: value.shopItem[index][0],
                          itemPrice: value.shopItem[index][1],
                          imagePath: value.shopItem[index][2],
                          color: value.shopItem[index][3],
                          onPressed: () {
                            context.read<CardModel>().addItemToCard(index);
                          },
                      );
                    },);
              }, 
                
              ))
        ]),
      ),
    );
  }
}
