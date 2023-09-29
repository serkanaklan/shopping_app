import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/provider/themeChange.dart';
import 'package:shopping_app/theme/theme.dart';

Widget ThemeIcon(context) {
  final provider = Provider.of<ThemeChange>(context);
  return IconButton(
      onPressed: () {
        provider.ChangeTheme();
      },
      icon: themeState ? light : dark);
}
