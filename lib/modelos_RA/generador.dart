import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class industrial extends StatelessWidget {
  const industrial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
            body: ModelViewer(
      src: "lib/modelos/generator.glb",
      ar: true,
    )));
  }
}
