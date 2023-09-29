import 'package:flutter/material.dart';

Widget CustomLoading(context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text(
          "LOADİNG",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
        ),
        CircularProgressIndicator(
          color: Colors.amber,
        )
      ],
    ),
  );
}
