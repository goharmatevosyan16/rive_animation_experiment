import 'package:rive/rive.dart';

import 'package:flutter/material.dart';

import '../navigation_helper.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(
              onPressed: () {
                CustomNavigationHelper.router.go(
                  CustomNavigationHelper.settingsPath,
                );
              },
              icon: const Icon(Icons.settings),
            ),
          ),
        ],
      ),
      body: const SelectColor(),
    );
  }
}

class SelectColor extends StatefulWidget {
  const SelectColor({super.key});

  @override
  _SelectColorState createState() => _SelectColorState();
}

class _SelectColorState extends State<SelectColor> {
  final List<Color> _gridColors = <Color>[
    Colors.purple,
    Colors.orange,
    Colors.green,
    Colors.yellow,
    Colors.blue,
    Colors.red,
  ];
  Color _riveColor = Colors.transparent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(_riveColor, BlendMode.colorDodge),
                child: const RiveAnimation.asset('assets/planet.riv'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'Assign a color for\nyour Friend group',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Expanded(
              child: GridView.count(
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                mainAxisSpacing: 32,
                crossAxisSpacing: 32,
                children: List.generate(
                  _gridColors.length,
                  (index) {
                    return GestureDetector(
                      onTap: () => setState(() => _riveColor = _gridColors[index]),
                      child: Card(
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          color: _gridColors[index],
                          child: Visibility(
                            visible: _riveColor == _gridColors[index],
                            child: const Icon(Icons.check, size: 30),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed:
                        _riveColor != Colors.transparent ? () => setState(() => _riveColor = Colors.transparent) : null,
                    child: const Text('Cancel'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
