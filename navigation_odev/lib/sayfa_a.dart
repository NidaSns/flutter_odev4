import 'package:flutter/material.dart';
import 'package:navigation_odev/sayfa_b.dart';

class SayfaA extends StatefulWidget {
  const SayfaA({Key? key}) : super(key: key);

  @override
  State<SayfaA> createState() => _SayfaAState();
}

class _SayfaAState extends State<SayfaA> {
  Future<bool> geriTusu(BuildContext context) async {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SAYFA A"),
        automaticallyImplyLeading: false,
      ),
      body: WillPopScope(
        onWillPop: () => geriTusu(context),
        child: Center(
          child: SizedBox(
            width: 150,
            height: 100,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => const SayfaB(),
                  ),
                );
              },
              child: const Text("GİT > B"),
            ),
          ),
        ),
      ),
    );
  }
}
