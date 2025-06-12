import 'package:flutter/material.dart';

class BlocCounterScreen extends StatelessWidget {
  const BlocCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Counter'),
        actions: [
          IconButton(onPressed: () => {}, icon: Icon(Icons.refresh_sharp)),
        ],
      ),
      body: Center(
        child: Text(
          'Counter Value: 0', // Placeholder for counter value
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'increment',
            onPressed: () {
              // Increment counter logic
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'decrement',
            onPressed: () {
              // Decrement counter logic
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'reset',
            onPressed: () {
              // Reset counter logic
            },
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
