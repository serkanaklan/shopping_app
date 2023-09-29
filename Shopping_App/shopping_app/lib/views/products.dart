import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shopping_app/views/widget/ThemeIconWidget.dart';
import 'package:shopping_app/views/widget/drawer.dart';

import 'widget/products_widget.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(context),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("All Products"),
        actions: [ThemeIcon(context)],
      ),
      body: Products_Widget(context),
    );
  }
}
