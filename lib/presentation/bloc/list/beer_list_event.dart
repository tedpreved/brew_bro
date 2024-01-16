import 'package:equatable/equatable.dart';

abstract class BeerListEvent extends Equatable {
  const BeerListEvent();

  @override
  List<Object> get props => [];
}

class LoadBeerList extends BeerListEvent {}
