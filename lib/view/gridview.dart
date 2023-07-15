import 'package:flutter/material.dart';
import 'detials.dart';



class ProductsGridPage extends StatelessWidget {
  final List<Product> products = [
    Product(
      imageUrl: 'https://images.unsplash.com/photo-1563178406-4cdc2923acbc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHdvbWVuJTIwaW4lMjB0c2hpcnR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
      name: 'womens frock',
      price: 19.99,
    ),
    Product(
      imageUrl: 'https://images.unsplash.com/photo-1563178406-4cdc2923acbc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fHdvbWVuJTIwaW4lMjB0c2hpcnR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
      name: 'womens t shirt',
      price: 29.99,
    ),
    Product(
      imageUrl: 'https://images.unsplash.com/photo-1541787457429-b1766a4766b6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8d29tZW4lMjBpbiUyMHRzaGlydHxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60',
      name: 'womens t shirt',
      price: 39.99,
    ),
    Product(
      imageUrl: 'https://images.unsplash.com/photo-1519722417352-7d6959729417?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHdvbWVuJTIwaW4lMjB0c2hpcnR8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60',
      name: 'Product 3',
      price: 39.99,
    ),
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 1000,
        child: GridView.builder(
          padding: EdgeInsets.all(16),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
              // Handle product tap event
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductPage( product: products[index],),
                ),
              );
            },
            child: ProductCard(product: products[index],),
            );
          },
        ),
      ),
    );
  }
}

class Product {
  final String imageUrl;
  final String name;
  final double price;

  Product({
    required this.imageUrl,
    required this.name,
    required this.price,
  });
}

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  '\$${product.price.toStringAsFixed(2)}',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
