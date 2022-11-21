import 'package:flutter/material.dart';

class GroceryItemTile extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String imagePath;
  final color;
  void Function()? onPressed;
   GroceryItemTile(
      {Key? key, required this.itemName, required this.itemPrice, required this.imagePath, this.color,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(color: color[100], borderRadius: BorderRadius.circular(12)),
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly ,
          children: [
            Image.asset(
              imagePath,
              height: 64,
            ),
            Text(itemName),
            MaterialButton(
              onPressed: onPressed,
              color: color,
              child: Text(
                '\$$itemPrice',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
