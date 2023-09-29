import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/blocs/Product/bloc/product_bloc.dart';
import 'package:shopping_app/views/products.dart';

import 'provider/themeChange.dart';

Future<void> main() async {
  ThemeChange().ChangeTheme;

  runApp(ChangeNotifierProvider<ThemeChange>(
    create: (context) => ThemeChange(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    Provider.of<ThemeChange>(context, listen: true).lastTheme();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: Provider.of<ThemeChange>(context).theme,
        home: MultiBlocProvider(providers: [
          BlocProvider<ProductBloc>(
            create: (context) => ProductBloc(),
          )
        ], child: Products()));
  }
}
