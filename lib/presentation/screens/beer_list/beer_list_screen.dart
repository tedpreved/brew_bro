import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:test_exercise/core/model/beer_item.dart';
import 'package:test_exercise/presentation/bloc/list/beer_list_bloc.dart';
import 'package:test_exercise/presentation/bloc/list/beer_list_event.dart';
import 'package:test_exercise/presentation/bloc/list/beer_list_state.dart';

class BeerListPage extends StatelessWidget {
  BeerListPage({super.key, required this.title});

  final String title;
  final _beerBloc = GetIt.instance<BeerListBloc>();

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
      body: BlocBuilder<BeerListBloc, BeerListState>(
        bloc: _beerBloc..add(LoadBeerList()),
        builder: (context, state) {
          if (state is BeerListLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is BeerListLoadedState) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView.builder(
                itemCount: state.beerList.length,
                itemBuilder: (context, index) {
                  return BeerListItemWidget(
                    beerItem: state.beerList[index],
                    navigateToDetails: () {
                      context.push('/details/', extra: state.beerList[index]);
                    },
                  );
                },
              ),
            );
          } else if (state is BeerListLoadingErrorState) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    state.message,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      _beerBloc.add(LoadBeerList());
                    },
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          } else {
            return const Center(
              child: Text('Unknown state'),
            );
          }
        },
      ),
    );
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.network(beerItem.imageUrl, width: 75, height: 75,
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(beerItem.name,
                          style: Theme.of(context).textTheme.titleMedium),
                      Text(beerItem.tagline),
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
