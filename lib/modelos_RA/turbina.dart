import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class mecatronica extends StatelessWidget {
  const mecatronica({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
            body: ModelViewer(
      src: "lib/modelos/turbina.glb",
      ar: true,
    )));
  }
}
