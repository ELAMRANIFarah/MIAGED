import 'package:flutter/material.dart';

class Product {
  final String name;
  final String description;
  final double price;

  Product({required this.name, required this.description, required this.price});
}

class Miaged extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: "Chemise",
      description: "Chemise bleue à rayures",
      price: 25.99,
    ),
    Product(
      name: "Chaussures",
      description: "Chaussures en cuir marron",
      price: 59.99,
    ),
    // Ajoutez d'autres produits ici
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Vinted"),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text(product.description),
            trailing: Text("\$${product.price.toStringAsFixed(2)}"),
          );
        },
      ),
    );
  }
}
