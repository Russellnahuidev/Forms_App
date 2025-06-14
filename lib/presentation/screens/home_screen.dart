import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScren extends StatelessWidget {
  const HomeScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            title: const Text('Cubits'),
            subtitle: const Text('Gestor de estado usando Cubits'),
            onTap: () => context.push('/cubits'),
          ),
          ListTile(
            trailing: const Icon(Icons.arrow_forward_ios_rounded),
            title: const Text('Bloc'),
            subtitle: const Text('Gestor de estado usando Bloc'),
            onTap: () => context.push('/counter-bloc'),
          ),
          // ListTile(
          //   leading: const Icon(Icons.info),
          //   title: const Text('About'),
          //   subtitle: const Text('This is the about screen'),
          //   onTap: () {
          //     // Handle tap
          //   },
          // ),
        ],
      ),
    );
  }
}
