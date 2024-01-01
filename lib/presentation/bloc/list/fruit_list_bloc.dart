import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_exercise/domain/common/use_case.dart';
import 'package:test_exercise/domain/usecases/load_fruit_use_case.dart';
import 'package:test_exercise/presentation/bloc/list/fruit_list_state.dart';

import 'fruit_list_event.dart';

class FruitListBloc extends Bloc<FruitListEvent, FruitListState> {
  final GetFruitListUseCase? getFruitUseCase;

  FruitListBloc({this.getFruitUseCase}) : super(FruitListLoadingState()) {
    on<LoadFruitList>(_loadFruitList);
  }

  Future<void> _loadFruitList(
    LoadFruitList event,
    Emitter<FruitListState> emit,
  ) async {
    emit(FruitListLoadingState());
    final failureOrSuccess = await getFruitUseCase?.call(NoParams());
    failureOrSuccess?.fold(
      (failure) => emit(const FruitListLoadingErrorState(
          message: "Holly guacamole! Something went wrong!\nPls try again.")),
      (success) => emit(FruitListLoadedState(fruitList: success)),
    );
  }
}
