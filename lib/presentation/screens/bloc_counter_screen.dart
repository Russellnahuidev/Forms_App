import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/presentation/blocs/counter_bloc/counter_bloc.dart';

class BlocCounterScreen extends StatelessWidget {
  const BlocCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (_) => CounterBloc(), child: BlocCounterView());
  }
}

class BlocCounterView extends StatelessWidget {
  const BlocCounterView({super.key});

  void increaseCounterBy(BuildContext context, [int value = 1]) {
    //context.read<CounterBloc>().add(CounterIncreased(value));
    context.read<CounterBloc>().increaseBy(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: context.select(
          (CounterBloc counterBloc) =>
              Text('Bloc Counter ${counterBloc.state.transactionCounter}'),
        ),
        actions: [
          IconButton(
            onPressed: () => context.read<CounterBloc>().add(CounterReset()),
            icon: Icon(Icons.refresh_sharp),
          ),
        ],
      ),
      body: Center(
        child: context.select(
          (CounterBloc counterBloc) => Text(
            'Counter Value: ${counterBloc.state.counter}', // Placeholder for counter value
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'increment',
            onPressed: () {
              // Increment counter logic
              increaseCounterBy(context, 1);
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'decrement',
            onPressed: () {
              // Decrement counter logic
              increaseCounterBy(context, -1);
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            heroTag: 'reset',
            onPressed: () {
              // Reset counter logic
              context.read<CounterBloc>().resetCouter();
            },
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
