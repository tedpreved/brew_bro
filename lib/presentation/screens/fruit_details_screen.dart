import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FruitDetailsScreen extends StatelessWidget {
  final Object? fruitItem;

  const FruitDetailsScreen({Key? key, this.fruitItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (fruitItem == null) {
      return Scaffold(
        appBar: AppBar(
            title: const Text('Fruit Details'),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                context.pop();
              },
            )),
        body: const Center(
          child: Text('Sorry there is something wrong with this fruit'),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(
          title: const Text('Fruit Details'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.pop();
            },
          )),
      body: Center(
        child: Text('Fruit Details for $fruitItem'),
      ),
    );
  }
}
