import 'package:api_test/pages/home_page.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          centerTitle: true,
          title: const Text(
            "Profile Page",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      body: Center(
        child: Text(
          "Profile Page",
        ),
      ),
      //   drawer: Drawer(
      //     backgroundColor: Colors.amber[300],
      //     child: ListView(
      //       children: [
      //         ListTile(
      //           trailing: const Icon(Icons.home),
      //           title: const Text(
      //             "Home Page",
      //             style: TextStyle(
      //               fontSize: 18,
      //               fontWeight: FontWeight.bold,
      //               color: Colors.black,
      //             ),
      //           ),
      //           onTap: () {
      //             Navigator.pop(context);
      //             Navigator.push(
      //               context,
      //               PageRouteBuilder(
      //                   pageBuilder: (context, animation, secondaryAnimation) =>
      //                       const HomePage(),
      //                   transitionDuration: Duration.zero),
      //             );
      //           },
      //         ),
      //         ListTile(
      //           trailing: const Icon(Icons.settings),
      //           title: const Text(
      //             "Settings Page",
      //             style: TextStyle(
      //               fontSize: 18,
      //               fontWeight: FontWeight.bold,
      //               color: Colors.black,
      //             ),
      //           ),
      //           onTap: () {
      //             Navigator.pop(context);
      //           },
      //         ),
      //       ],
      //     ),
      //   ),
    );
  }
}
