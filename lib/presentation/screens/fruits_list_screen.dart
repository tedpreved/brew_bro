import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:test_exercise/presentation/bloc/list/fruit_list_bloc.dart';
import 'package:test_exercise/presentation/bloc/list/fruit_list_event.dart';
import 'package:test_exercise/presentation/bloc/list/fruit_list_state.dart';

class FruitsListPage extends StatelessWidget {
  const FruitsListPage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(title),
      ),
      body:
        BlocBuilder<FruitListBloc, FruitListState>(
          bloc: GetIt.instance<FruitListBloc>()..add(LoadFruitList()),
          builder: (context, state) {
            if (state is FruitListLoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is FruitListLoadedState) {
              return ListView.builder(
                itemCount: state.fruitList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(state.fruitList[index].name),
                    subtitle: Text(state.fruitList[index].family.toString()),
                    onTap: (){
                    context.push('/details/', extra: state.fruitList[index]);
                    },
                  );
                },
              );
            } else if (state is FruitListLoadingErrorState) {
              return Center(
                child: Text(state.message),
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
