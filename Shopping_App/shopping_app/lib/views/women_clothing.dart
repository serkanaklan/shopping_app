import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shopping_app/views/widget/women_widget.dart';

class WomenClothhing extends StatefulWidget {
  const WomenClothhing({super.key});

  @override
  State<WomenClothhing> createState() => _WomenClothhingState();
}

class _WomenClothhingState extends State<WomenClothhing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Women Clothing"),
      ),
      body: Womens_Clothing_widget(),
    );
  }
}
