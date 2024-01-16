import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_exercise/domain/common/use_case.dart';
import 'package:test_exercise/domain/usecases/load_beer_use_case.dart';
import 'package:test_exercise/presentation/bloc/list/beer_list_state.dart';

import 'beer_list_event.dart';

class BeerListBloc extends Bloc<BeerListEvent, BeerListState> {
  final GetBeerListUseCase? getBeerUseCase;

  BeerListBloc({this.getBeerUseCase}) : super(BeerListLoadingState()) {
    on<LoadBeerList>(_loadBeerList);
  }

  Future<void> _loadBeerList(
    LoadBeerList event,
    Emitter<BeerListState> emit,
  ) async {
    emit(BeerListLoadingState());
    final failureOrSuccess = await getBeerUseCase?.call(NoParams());
    failureOrSuccess?.fold(
      (failure) => emit(const BeerListLoadingErrorState(
          message: "Holly guacamole! Something went wrong!\nPls try again.")),
      (success) => emit(BeerListLoadedState(beerList: success)),
    );
  }
}
