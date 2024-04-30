// import 'package:flutter/material.dart';
//
// import '../navigation_helper.dart';
//
// class SearchPage extends StatelessWidget {
//   const SearchPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Search"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () {
//                 CustomNavigationHelper.router.go(CustomNavigationHelper.homePath);
//                 CustomNavigationHelper.router.push(CustomNavigationHelper.detailPath);
//               },
//               child: const Text('Go Home Tab -> Push Detail Page'),
//             ),
//             const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Text(
//                 'It will change the tab without loosing the state',
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 CustomNavigationHelper.router.go(
//                   CustomNavigationHelper.settingsPath,
//                 );
//               },
//               child: const Text('Go Settings Tab'),
//             ),
//             const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Text(
//                 'Or instead we can launch the bottom navigation page(with shell) for different tab with only changing the path',
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
