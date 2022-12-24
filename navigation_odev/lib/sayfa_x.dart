import 'package:flutter/material.dart';
import 'package:navigation_odev/sayfa_y.dart';

class SayfaX extends StatefulWidget {
  const SayfaX({Key? key}) : super(key: key);

  @override
  State<SayfaX> createState() => _SayfaXState();
}

class _SayfaXState extends State<SayfaX> {
  Future<bool> geriTusu(BuildContext context) async {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SAYFA X"),
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
                    builder: (context) => const SayfaY(),
                  ),
                );
              },
              child: const Text("GİT > Y"),
            ),
          ),
        ),
      ),
    );
  }
}
