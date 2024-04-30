import 'package:flutter/material.dart';

import '../navigation_helper.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                CustomNavigationHelper.router.go(
                  CustomNavigationHelper.homePath,
                );
              },
              child: const Text('Go Home Page'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                CustomNavigationHelper.router.push(
                  CustomNavigationHelper.detailPath,
                );
              },
              child: const Text('Push Details Page'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                CustomNavigationHelper.router.go(CustomNavigationHelper.homePath);
                CustomNavigationHelper.router.push(CustomNavigationHelper.detailPath);
              },
              child: const Text('Push Detail Page -> Return Home page'),
            ),
          ],
        ),
      ),
    );
  }
}
