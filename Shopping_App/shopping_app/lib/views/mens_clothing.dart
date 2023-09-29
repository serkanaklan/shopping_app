import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shopping_app/views/widget/men_widget.dart';

class Mens_clothng extends StatefulWidget {
  const Mens_clothng({super.key});

  @override
  State<Mens_clothng> createState() => _Mens_clothngState();
}

class _Mens_clothngState extends State<Mens_clothng> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mens's Clothing"),
      ),
      body: Mens_Clothing_widget(),
    );
  }
}
