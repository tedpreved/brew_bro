import 'package:equatable/equatable.dart';
import 'package:test_exercise/core/model/beer_item.dart';

abstract class BeerListState extends Equatable {
  const BeerListState();

  @override
  List<Object> get props => [];
}

class BeerListLoadingState extends BeerListState {}

class BeerListLoadedState extends BeerListState {
  final List<BeerItem> beerList;

  const BeerListLoadedState({
    required this.beerList,
  });

  @override
  List<Object> get props => [beerList];
}

class BeerListLoadingErrorState extends BeerListState {
  final String message;

  const BeerListLoadingErrorState({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}
