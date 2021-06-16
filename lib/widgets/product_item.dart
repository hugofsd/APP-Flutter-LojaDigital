import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  //poduto
  ProductItem(this.product);

  @override
  Widget build(BuildContext context) {
    //rede telha
    return GridTile(
      //filha
      child: Image.network(
        product.imageUrl,
        fit: BoxFit.cover, // cober a area to tile
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black54, //legenda inferior
        leading: IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {},
        ),
        title: Text(
          product.title,
          textAlign: TextAlign.center,
        ),
        trailing: IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
      ),
    );
  }
}
