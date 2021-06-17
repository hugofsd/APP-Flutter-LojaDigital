import 'package:flutter/material.dart';

import '../models/product.dart';

class ProductItem extends StatelessWidget {
  final Product product;

  //poduto
  ProductItem(this.product);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      //rede telha

      child: GridTile(
        //filha
        child: Image.network(
          product.imageUrl,
          fit: BoxFit.cover, // cober a area to tile
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black54, //legenda inferior
          leading: IconButton(
            color: Theme.of(context).accentColor,
            icon: Icon(Icons.favorite),
            onPressed: () {},
          ),
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            color: Theme.of(context).accentColor,
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ),
      ),
    ); //envolver o gred para que possamos definir a borda arredondada
  }
}
