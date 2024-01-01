import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_exercise/data/model/fruit_item.dart';

class FruitDetailsScreen extends StatelessWidget {
  final Object? fruitItem;

  const FruitDetailsScreen({
    Key? key,
    this.fruitItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Fruit Details'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.pop();
            },
          )),
      body: fruitItem != null
          ? FruitDetailsHolder(fruitItem: fruitItem as FruitItem)
          : const Center(
              child: Text('Holly guacamole! Something went wrong!'),
            ),
    );
  }
}

class FruitDetailsHolder extends StatelessWidget {
  final FruitItem fruitItem;

  const FruitDetailsHolder({
    Key? key,
    required this.fruitItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("General info:", style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 16),
        Text("Name: \t${fruitItem.name}",
            style: Theme.of(context).textTheme.titleMedium),
        Text("Family: \t${fruitItem.family}",
            style: Theme.of(context).textTheme.titleMedium),
        Text("Order: \t${fruitItem.order}",
            style: Theme.of(context).textTheme.titleMedium),
        Text("Genus: \t${fruitItem.genus}",
            style: Theme.of(context).textTheme.titleMedium),
        const SizedBox(height: 16),
        Text("Nutritions:", style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 16),
        Text("Calories: ${fruitItem.nutritions.calories}",
            style: Theme.of(context).textTheme.titleMedium),
        Text("Fat: ${fruitItem.nutritions.fat}",
            style: Theme.of(context).textTheme.titleMedium),
        Text("Sugar: ${fruitItem.nutritions.sugar}",
            style: Theme.of(context).textTheme.titleMedium),
        Text("Protein: ${fruitItem.nutritions.protein}",
            style: Theme.of(context).textTheme.titleMedium),
        Text("Carbohydrates: ${fruitItem.nutritions.carbohydrates}",
            style: Theme.of(context).textTheme.titleMedium),
      ]),
    );
  }
}
