import 'package:flutter/material.dart';

class BoutonArrondi extends StatelessWidget {
  const BoutonArrondi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.5,
      child: ElevatedButton(
        onPressed: () {
          print('Mon bouton fonctionne');
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
          side: const BorderSide(color: Colors.black, width: 1),
        ),
        child: const Text(
          'Bouton de test',
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
