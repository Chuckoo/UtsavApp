import 'package:flutter/material.dart';
import 'package:flutter_watch_shop/global_widgets/product_card.dart';
import 'package:flutter_watch_shop/models/product.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  String selectedFilter;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final itemCountRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[],
    );

    final list = Expanded(
      child: GridView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ProductCard(product: products[index]);
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 15.0,
          childAspectRatio: 0.7,
        ),
        itemCount: products.length,
      ),
    );

    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0),
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: <Widget>[itemCountRow, list],
      ),
    );
  }
}

