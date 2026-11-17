// EX 2 – The best cards (handout page: EX 2). Start code for Part 1.
// Try Part 1 yourself first, then compare with ex2_part1_correction.dart.

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Favorite cards"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.only(top: 15)),
              FavoriteCard(),
              SizedBox(height: 10,),
              FavoriteCard(),
            ]
          ),
        ),
      ),
    ));

class FavoriteCard extends StatefulWidget {


  const FavoriteCard({
    super.key,
  });

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {

  bool isFavorite = false;

  void isFavoriteCard() {
    setState(() {
      isFavorite = !isFavorite;
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container (
      padding: EdgeInsets.all(15),
      width: 500,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[100],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("title",
                  style: TextStyle(
                    color: Colors.blue,
    
                  ),
                ),
                SizedBox(height: 5,),
    
                Text("description", 
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
    
              ],
            )
          ),
    
          IconButton(
            onPressed: isFavoriteCard,
            icon: Icon( isFavorite ? Icons.favorite : Icons.favorite_border),
            color: isFavorite ? Colors.red : Colors.grey,
          ),
    
        ],
      ),
    );
  }
}
