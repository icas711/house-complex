import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:housing_complex_objects/model/housing_complex_items.dart';

class HousingComplexRepo {
  final url = 'http://json-parser.com/f5628f20/4.json';

  Future<HousingComplexItems> getHousingComplexItems() async {
    final dio = Dio();
    try {
      final response = await dio.get(url,
        options: Options(
          contentType: Headers.jsonContentType,
          responseType: ResponseType.plain,
        )
      );
      var jsonResult = json.decode(response.data);
      return HousingComplexItems.fromJson(jsonResult);
    } catch (e) {
      throw Exception(e.toString());
    }
  }

}
