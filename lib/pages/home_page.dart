import 'package:api_test/pages/settings_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: const Text(
          "Home Page",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Text(
          "Home Page",
        ),
      ),
      // drawer: Drawer(
      //   backgroundColor: Colors.amber[300],
      //   child: ListView(
      //     children: [
      //       ListTile(
      //         trailing: const Icon(Icons.home),
      //         title: const Text(
      //           "Home Page",
      //           style: TextStyle(
      //             fontSize: 18,
      //             fontWeight: FontWeight.bold,
      //             color: Colors.black,
      //           ),
      //         ),
      //         onTap: () {
      //           // close the drawer
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         trailing: const Icon(Icons.settings),
      //         title: const Text(
      //           "Settings Page",
      //           style: TextStyle(
      //             fontSize: 18,
      //             fontWeight: FontWeight.bold,
      //             color: Colors.black,
      //           ),
      //         ),
      //         onTap: () {
      //           Navigator.pop(context);
      //           Navigator.push(
      //             context,
      //             PageRouteBuilder(
      //                 pageBuilder: (context, animation, secondaryAnimation) =>
      //                     const SettingsPage(),
      //                 transitionDuration: Duration.zero),
      //           );
      //         },
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
