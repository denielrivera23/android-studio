import 'package:flutter/material.dart';
import 'package:untitled/pages/Products.dart';

class Itemcard extends StatelessWidget {
  final Products products;
  const Itemcard({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFE5EDEB), // Almond background color
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                products.Item,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Price: ${products.Price}',
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  'Qty: ${products.Quantity}',
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 4), // spacing
                ElevatedButton(
                  onPressed: () {
                    // Add your checkout logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.indigo[900], // navy blue
                    foregroundColor: Colors.white, // font color
                  ),
                  child: const Text('Check Out'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}