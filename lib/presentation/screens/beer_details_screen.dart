import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_exercise/core/model/beer_item.dart';

class BeerDetailsScreen extends StatelessWidget {
  final BeerItem? beerItem;

  const BeerDetailsScreen({
    Key? key,
    this.beerItem,
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
      body: beerItem != null
          ? BeerDetailsHolder(beerItem: beerItem!)
          : const Center(
              child: Text('Holly guacamole! Something went wrong!'),
            ),
    );
  }
}

class BeerDetailsHolder extends StatelessWidget {
  final BeerItem beerItem;

  const BeerDetailsHolder({
    Key? key,
    required this.beerItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("General info:", style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(height: 16),
        Text("Name: ${beerItem.name}"),
        const SizedBox(height: 8),
        Text("Tagline: ${beerItem.tagline}"),
        const SizedBox(height: 8),
        Text("First brewed: ${beerItem.firstBrewed}"),
        const SizedBox(height: 8),
        Text("Description: ${beerItem.description}"),
        const SizedBox(height: 8),
        Text("ABV: ${beerItem.abv}"),
        const SizedBox(height: 8),
        Text("IBU: ${beerItem.ibu}"),
        const SizedBox(height: 8),
        Text("Target FG: ${beerItem.targetFg}"),
        const SizedBox(height: 8),
        Text("Target OG: ${beerItem.targetOg}"),
        const SizedBox(height: 8),
        Text("EBC: ${beerItem.ebc}"),
        const SizedBox(height: 8),
        Text("SRM: ${beerItem.srm}"),
        const SizedBox(height: 8),
        Text("PH: ${beerItem.ph}"),
        const SizedBox(height: 8),
        Text("Attenuation level: ${beerItem.attenuationLevel}"),
        const SizedBox(height: 8),
        Text("Volume: ${beerItem.volume?.value ?? ""}"),
        const SizedBox(height: 8),
        Text("Boil volume: ${beerItem.boilVolume?.value ?? ""}"),
        const SizedBox(height: 8),
        Text("Method: ${beerItem.method?.mashTemp ?? ""}"),
        const SizedBox(height: 8),

      ]),
    );
  }
}
