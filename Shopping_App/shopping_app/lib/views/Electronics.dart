import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shopping_app/views/widget/electronics_widget.dart';

class Electronics extends StatefulWidget {
  const Electronics({super.key});

  @override
  State<Electronics> createState() => _ElectronicsState();
}

class _ElectronicsState extends State<Electronics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Electronics"),
      ),
      body: Electronics_widget(),
    );
  }
}
