import 'package:flutter/material.dart';

import 'bouton_arrondi.dart';

class ExampleRowColumn extends StatefulWidget {
  const ExampleRowColumn({super.key});

  @override
  State<ExampleRowColumn> createState() => _ExampleRowColumnState();
}

class _ExampleRowColumnState extends State<ExampleRowColumn> {
  @override
  Widget build(BuildContext context) {
    final hauteur = MediaQuery.of(context).size.height;
    final largeur = MediaQuery.of(context).size.width;

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.purple,
              height: hauteur * 0.08,
              width: largeur * 0.3,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Connexion',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            Container(
              color: Colors.red,
              height: hauteur * 0.08,
              width: largeur * 0.3,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Déconnexion',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),

            const SizedBox(height: 20),
            const BoutonArrondi(),
          ],
        ),
      ),
    );
  }
}
