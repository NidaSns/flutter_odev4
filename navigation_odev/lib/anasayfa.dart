import 'package:flutter/material.dart';
import 'package:navigation_odev/sayfa_a.dart';
import 'package:navigation_odev/sayfa_x.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ANASAYFA"),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 150,
              height: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SayfaA(),
                    ),
                  );
                },
                child: const Text("GİT > A"),
              ),
            ),
            SizedBox(
              width: 150,
              height: 100,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const SayfaX(),
                    ),
                  );
                },
                child: const Text("GİT > X"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
