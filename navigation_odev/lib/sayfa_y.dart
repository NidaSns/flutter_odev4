import 'package:flutter/material.dart';
import 'package:navigation_odev/anasayfa.dart';

class SayfaY extends StatefulWidget {
  const SayfaY({Key? key}) : super(key: key);

  @override
  State<SayfaY> createState() => _SayfaYState();
}

class _SayfaYState extends State<SayfaY> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SAYFA Y"),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const Anasayfa(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
    );
  }
}
