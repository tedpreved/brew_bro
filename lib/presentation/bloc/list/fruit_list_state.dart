import 'package:equatable/equatable.dart';
import 'package:test_exercise/core/model/fruit_item.dart';

abstract class FruitListState extends Equatable {
  const FruitListState();

  @override
  List<Object> get props => [];
}

class FruitListLoadingState extends FruitListState {}

class FruitListLoadedState extends FruitListState {
  final List<FruitItem> fruitList;

  const FruitListLoadedState({
    required this.fruitList,
  });

  @override
  List<Object> get props => [fruitList];
}

class FruitListLoadingErrorState extends FruitListState {
  final String message;

  const FruitListLoadingErrorState({
    required this.message,
  });

  @override
  List<Object> get props => [message];
}
