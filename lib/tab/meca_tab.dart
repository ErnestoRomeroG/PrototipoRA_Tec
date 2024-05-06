import 'package:flutter/material.dart';
<<<<<<< HEAD
// ignore: unused_import
import 'package:prototipo_ra_tec/modelos_RA/turbina.dart';

class Mecatronica extends StatelessWidget {
  final List<List<dynamic>> atractivos = [
    ["Laboratorio", "Mecatronica", "lib/Imagenes/mecatronica.jpeg"],
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: atractivos.length,
      itemBuilder: (BuildContext context, int index) {
        final atractivo = atractivos[index];
        return InkWell(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const mecatronica(),
            ));
          },
          child: Container(
            padding: EdgeInsets.all(8),
            child: Stack(
              children: [
                Container(
                  width: double.infinity, // Ancho completo del contenedor
                  height: 200, // Altura del contenedor
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                      image: AssetImage(atractivo[2]), // Imagen del atractivo
                      fit: BoxFit
                          .cover, // Ajusta la imagen para que cubra todo el contenedor
                    ),
                  ),
                ),
                Container(
                  width: double.infinity, // Ancho completo del contenedor
                  height: 200, // Altura del contenedor
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black.withOpacity(
                        0.5), // Color de fondo del contenedor transparente
                  ),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          atractivo[0], // Nombre del atractivo
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8), // Espaciador
                        Text(
                          atractivo[1], // Descripción del atractivo
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
=======

class Mecatab extends StatelessWidget {
  const Mecatab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Mecatronica"),
      ),
>>>>>>> d257760e0b3185052478ebbfd7237a89cbd9b2ec
    );
  }
}
