part of 'housing_complex_bloc.dart';

@freezed
class HousingComplexState with _$HousingComplexState {
  const factory HousingComplexState.loading() = HousingComplexStateLoading;

  const factory HousingComplexState.loaded({
    required HousingComplexItems housingComplexItemsLoaded,
  }) = HousingComplexStateLoaded;

  const factory HousingComplexState.error() = HousingComplexStateError;

  factory HousingComplexState.fromJson(Map<String, dynamic> json) => _$HousingComplexStateFromJson(json);
}
