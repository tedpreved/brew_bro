import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
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
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(title),
      ),
      body: BlocBuilder<BeerListBloc, BeerListState>(
        bloc: _beerBloc..add(LoadBeerList()),
        builder: (context, state) {
          if (state is BeerListLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is BeerListLoadedState) {
            return ListView.builder(
              itemCount: state.beerList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(state.beerList[index].name),
                  subtitle: Text(state.beerList[index].description),
                  onTap: () {
                    context.push('/details/', extra: state.beerList[index]);
                  },
                );
              },
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
