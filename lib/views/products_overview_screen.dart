import 'package:flutter/material.dart';

import '../data/dammy_data.dart';
import '../models/product.dart';
import '../widgets/product_item.dart';

class PrdocutsOverviewScreen extends StatelessWidget {
  final List<Product> loadedProducts = DAMMY_PRODUCTS;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loja'),
      ),
      //builder rendenizar de acordo com a demanda
      body: GridView.builder(
        padding: const EdgeInsets.all(11), //sair dar borda da tela
        itemCount:
            loadedProducts.length, // saber quantos elesmentos vai rendenizar
        itemBuilder: (ctx, i) => ProductItem(loadedProducts[i]),
        //quantidade fixa de elementos no eixo da linha, sliver com scroll,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, //dois elementos fixos por linha
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 10, //eixo da linha
            mainAxisExtent: 130,
            mainAxisSpacing: 10),
      ),
    );
  }
}
