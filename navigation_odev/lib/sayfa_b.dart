import 'package:flutter/material.dart';
import 'package:navigation_odev/sayfa_y.dart';

class SayfaB extends StatefulWidget {
  const SayfaB({Key? key}) : super(key: key);

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  Future<bool> geriTusu(BuildContext context) async {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SAYFA B"),
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
