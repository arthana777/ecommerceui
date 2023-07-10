
import 'package:flutter/material.dart';

import 'categories.dart';
import 'gridview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Expanded(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const[

                             const  CircleAvatar(
                                radius: 24,
                                backgroundImage:  NetworkImage(
                                  'https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bWFuJTIwaW1hZ2VzfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
                                ),
                              ),
                              const SizedBox(width: 5,),
                              const Text('HI,ARIF',
                                style: TextStyle(color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,),),
                            ],
                          ),

                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.search),
                                onPressed: () {
                                  // Handle favorite button tap
                                },
                              ),
                              IconButton(
                                icon: const Icon(Icons.lock),
                                onPressed: () {
                                  // Handle share button tap
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        width: 300,
                        child: Image(image: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/007/229/427/small/welcome-calligraphic-inscription-with-smooth-lines-vector.jpg',
                        )),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            alignment: Alignment.bottomLeft,
                            height: 50,
                            width: 100,
                            child: const Text('categories',
                              style: TextStyle(color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),

                     SizedBox(height: 100,
                     child: Category(),),
                      SizedBox(height: 1000,
                      child: ProductsGridPage(),)
                    ],
                  ),
                ),
              ),


          )
      ),

    );
  }
}