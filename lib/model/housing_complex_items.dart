import 'package:freezed_annotation/freezed_annotation.dart';

part 'housing_complex_items.freezed.dart';

part 'housing_complex_items.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class HousingComplexItems with _$HousingComplexItems {
  const factory HousingComplexItems({
    required List<Item> payload,
  }) = _HousingComplexItems;

  factory HousingComplexItems.fromJson(Map<String, dynamic> json) =>
      _$HousingComplexItemsFromJson(json);
}

@Freezed(makeCollectionsUnmodifiable: false)
class Item with _$Item {
  const factory Item({
    required String title,
    required int remaining_points,
    required int total_points_count,
    required List<Map<String, dynamic>> points,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
