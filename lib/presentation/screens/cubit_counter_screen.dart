import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:forms_app/presentation/blocs/counter_cubir/counter_cubit.dart';

class CubitCounterScreen extends StatelessWidget {
  const CubitCounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: _CubitCounterView(),
    );
  }
}

class _CubitCounterView extends StatelessWidget {
  const _CubitCounterView();

  @override
  Widget build(BuildContext context) {
    final counterState = context.watch<CounterCubit>().state;
    return Scaffold(
      appBar: AppBar(
        title: Text('Cubit Counter: ${counterState.transactionCounter}'),
        actions: [
          IconButton(onPressed: () => {}, icon: Icon(Icons.refresh_sharp)),
        ],
      ),
      body: Center(
        child: BlocBuilder<CounterCubit, CounterState>(
          // buildWhen: (previous, current) => current.counter != previous.counter,
          builder: (context, state) {
            return Text(
              'Counter Value: ${state.counter}', // Placeholder for counter value
            );
          },
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
