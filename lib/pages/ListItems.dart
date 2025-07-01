import 'package:flutter/material.dart';
import 'package:untitled/pages/ItemCard.dart';
import 'package:untitled/pages/Products.dart';

class ListItems extends StatefulWidget {
  const ListItems({super.key});

  @override
  State<ListItems> createState() => ListItemsState();
}

class ListItemsState extends State<ListItems> {
  List<Products> products = [
    Products(Item: 'Ec90  HandleBar', Price: 500.00, Quantity: 1),
    Products(Item: 'Maxxis Pace Tire', Price: 800.00, Quantity: 1),
    Products(Item: 'SuperLogic Saddle', Price: 300.00, Quantity: 1),
    Products(Item: 'Shimano PD-R540', Price: 200.00, Quantity: 1),
    Products(Item: 'Shimano MT200', Price: 600.00, Quantity: 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 128), // Opaque color
        title: const Text(
          'Chris Bike Store',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          itemCount: products.length,
          separatorBuilder: (context, index) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            final product = products[index];
            return Itemcard(products: product); // Use correct class name
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/add'); // Navigate to AddParts page
        },
        backgroundColor: Color.fromARGB(255, 255, 255, 255), // Opaque color
        child:  Icon(Icons.add),
      ),

    );
  }
}