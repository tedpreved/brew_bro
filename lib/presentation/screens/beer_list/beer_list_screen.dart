import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:test_exercise/core/model/beer_item.dart';
import 'package:test_exercise/injection.dart';

class BeerListPage extends StatelessWidget {
  const BeerListPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
        ],
      ),
      body: const BeerListView(),
    );
  }
}

class BeerListView extends HookConsumerWidget {
  const BeerListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<BeerItem>> beers = ref.watch(beerListProvider);

    return Center(
        child: switch (beers) {
      AsyncData(:final value) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView.builder(
            itemCount: value.length,
            itemBuilder: (context, index) {
              return BeerListItemWidget(
                beerItem: value[index],
                navigateToDetails: () {
                  context.push('/details/', extra: value[index]);
                },
              );
            },
          ),
        ),
      AsyncError() => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Holy guacamole, something went wrong"),
              ElevatedButton(
                onPressed: () {
                  ref.invalidate(beerListProvider);
                },
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      _ => const CircularProgressIndicator(),
    });
  }
}

class BeerListItemWidget extends StatelessWidget {
  const BeerListItemWidget({
    Key? key,
    required this.beerItem,
    required this.navigateToDetails,
  }) : super(key: key);

  final BeerItem beerItem;
  final Function? navigateToDetails;

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        color: Theme.of(context).colorScheme.surfaceVariant,
        child: InkWell(
          onTap: () {
            navigateToDetails?.call();
          },
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.network(Uri.parse(beerItem.imageUrl ?? "").toString(),
                    width: 75,
                    height: 75, loadingBuilder: (BuildContext context,
                        Widget child, ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }, errorBuilder: (BuildContext context, Object exception,
                        StackTrace? stackTrace) {
                  return const Icon(Icons.error);
                }),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(beerItem.name ?? "",
                          style: Theme.of(context).textTheme.titleMedium),
                      Text(beerItem.tagline ?? ""),
                      Text("ibu: ${beerItem.ibu} abv: ${beerItem.abv}"),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
              ],
            ),
          ),
        ));
  }
}
