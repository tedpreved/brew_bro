import 'package:equatable/equatable.dart';

abstract class FruitListEvent extends Equatable {
  const FruitListEvent();

  @override
  List<Object> get props => [];
}

class LoadFruitList extends FruitListEvent {}
