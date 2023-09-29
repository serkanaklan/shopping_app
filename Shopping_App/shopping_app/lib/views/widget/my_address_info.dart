import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Address_Info extends StatefulWidget {
  const Address_Info({super.key});

  @override
  State<Address_Info> createState() => _Address_InfoState();
}

class _Address_InfoState extends State<Address_Info> {
  @override
  Widget build(BuildContext context) {
    final My_Address_info = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(
        title: const Text("YOUR ADDRESS "),
      ),
      body: Center(
        child: Form(
          key: My_Address_info,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  validator: (keyValue) {
                    if (keyValue!.isEmpty || keyValue == null) {
                      return "Doldurulması gerekiyor";
                    }
                    return null;
                  },
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[a-z A-Z]')),
                  ],
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      hintText: "AD - SOYAD"),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  validator: (keyValue) {
                    if (keyValue!.isEmpty || keyValue == null) {
                      return "Doldurulması gerekiyor";
                    }
                    return null;
                  },
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                  ],
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      hintText: "TELEFON NUMARASI"),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  validator: (keyValue) {
                    if (keyValue!.isEmpty || keyValue == null) {
                      return "Doldurulması gerekiyor";
                    }
                    return null;
                  },
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp('[a-z A-Z]')),
                  ],
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      hintText: "ADRES BİLGİSİ"),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (My_Address_info.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Siparişiniz alındı')),
                        );
                      }
                    },
                    child: Text("TAMAM"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
