import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:shopping_app/views/widget/jewerly_widget.dart';

class Jewerly extends StatefulWidget {
  const Jewerly({super.key});

  @override
  State<Jewerly> createState() => _JewerlyState();
}

class _JewerlyState extends State<Jewerly> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jewerly"),
      ),
      body: Jewerly_widget(),
    );
  }
}
