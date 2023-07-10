import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
   Category({Key? key}) : super(key: key);


  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  final List<String>items = ['all', 'mens', 'womens', 'kids'];
  var selectedIndex=0;
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        setState(() {

        });
      },
      child: Container(
        height: 50,
        width: 400,
        decoration: BoxDecoration(color: Colors.white),
        child: Center(
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    items.length,
                        (index) =>
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius
                                    .circular(20)
                                , boxShadow: [
                              BoxShadow(
                                  blurStyle: BlurStyle.outer,
                                  blurRadius: 1
                              )
                            ]),
                            child: Center(
                              child: Text(items[index],
                              style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.bold),),
                            ),

                            // color: selectedIndex== index? Colors.black:Colors.transparent,
                          ),

                        )),
              )),
        ),
      ),
    );
  }
}
