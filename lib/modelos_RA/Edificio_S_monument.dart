import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class monumentogorila extends StatelessWidget {
  const monumentogorila({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
            body: ModelViewer(
      src: "lib/modelos/Edificio_S.glb",
      ar: true,
    )));
  }
}
