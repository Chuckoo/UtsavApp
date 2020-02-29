import 'package:flutter/material.dart';
import 'package:flutter_watch_shop/global_widgets/product_card.dart';
import 'package:flutter_watch_shop/models/product.dart';

class ProductList1 extends StatefulWidget {
  @override
  _ProductListState1 createState() => _ProductListState1();
}

class _ProductListState1 extends State<ProductList1> {
  String selectedFilter;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final itemCountRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "270 Items",
          style: TextStyle(fontSize: 17.0),
        ),
      ],
    );

    final list = Expanded(
      child: GridView.builder(
        itemBuilder: (BuildContext context, int index) {
          return ProductCard(product: products1[index]);
        },
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 15.0,
          childAspectRatio: 0.65,
        ),
        itemCount: products1.length,
      ),
    );

    return Container(
      child: Column(
        children: <Widget>[itemCountRow, list],
      ),
    );
  }
}

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
      children: <Widget>[
        Text(
          "270 Items",
          style: TextStyle(fontSize: 17.0),
        ),
      ],
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
          childAspectRatio: 0.65,
        ),
        itemCount: products.length,
      ),
    );

    return Container(
      child: Column(
        children: <Widget>[itemCountRow, list],
      ),
    );
  }
}

