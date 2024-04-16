import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:housing_complex_objects/model/housing_complex_items.dart';
import 'package:housing_complex_objects/repo/housing_complex_repo.dart';

part 'housing_complex_bloc.freezed.dart';

part 'housing_complex_bloc.g.dart';

part 'housing_complex_event.dart';

part 'housing_complex_state.dart';

class HousingComplexBloc extends Bloc<HousingComplexEvent, HousingComplexState> {
  final HousingComplexRepo housingComplexRepo;

  HousingComplexBloc({required this.housingComplexRepo})
      : super(
    const HousingComplexState.loading(),
  ) {
    on<HousingComplexEventFetch>((event, emit) async {
      emit(const HousingComplexState.loading());
      try {
        final _housingComplexLoaded = await housingComplexRepo
            .getHousingComplexItems()
            .timeout(const Duration(seconds: 10));
        emit(HousingComplexState.loaded(housingComplexItemsLoaded: _housingComplexLoaded));
      } catch (_) {
        emit(const HousingComplexState.error());
        rethrow;
      }
    });
  }

  @override
  HousingComplexState? fromJson(Map<String, dynamic> json) =>
      HousingComplexState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(HousingComplexState state) => state.toJson();
}
