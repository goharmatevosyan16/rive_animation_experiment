import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail"),
      ),
      body: const ColorFiltered(
        colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.difference),
        child: RiveAnimation.asset('assets/planet.riv'),
      ),
    );
  }
}
