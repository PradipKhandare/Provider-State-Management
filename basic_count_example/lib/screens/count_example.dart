import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state/provider/count_provider.dart';

class CountExample extends StatefulWidget {
  const CountExample({super.key});

  @override
  State<CountExample> createState() => _CountExampleState();
}

class _CountExampleState extends State<CountExample> {
  @override
  Widget build(BuildContext context) {
    print('Whole screen rebuilds.');
    final countProvider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Subscribe'),
      ),
      body: Center(
        child: Consumer<CountProvider>(
          builder: (context, value, child){
            print('Only this widget rebuilds');
            return Text(
              value.count.toString(),
              style: const TextStyle(fontSize: 50),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setCount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
