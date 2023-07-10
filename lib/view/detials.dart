import 'package:flutter/material.dart';

import 'gridview.dart';

class ProductPage extends StatelessWidget {
  final Product product;

  const ProductPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
                Text('Detials'),
                IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag_outlined)),
              ],
            ),
            SizedBox(
              height: 500,
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.name,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.yellow,
                      ),
                    ),
                    SizedBox(width: 5,),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.redAccent,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                TextButton(onPressed: (){}, child: Text('S',
                style: TextStyle(color: Colors.black),)),
                TextButton(onPressed: (){}, child: Text('M',
                    style: TextStyle(color: Colors.black))),
                TextButton(onPressed: (){}, child: Text('L',
                    style: TextStyle(color: Colors.black))),
                TextButton(onPressed: (){}, child: Text('XL',
                    style: TextStyle(color: Colors.black))),
                ]
            ),
            SizedBox(height: 20),

            Container(
              height: 50,
              width: 600,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.star,color: Colors.yellow,),
                  Text('4.8'),
                  Text('80 reviews',style: TextStyle(color: Colors.black54),)
                ],
              )
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '\$${product.price.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Implement your desired functionality
                  },
                  child: Text('Add to Bag'),
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // Set border radius
                      ),


                    ),
                  ),

                ),
                ],
            ),
            SizedBox(height: 16),

          ],
        ),
      ),
    );
  }
}
