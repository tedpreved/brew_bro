import 'package:test_exercise/core/model/mash_temp.dart';

class Method {
  final List<MashTemp>? mashTemp;
  final Map<String, dynamic>? fermentation;
  final String? twist;

  Method({this.mashTemp, this.fermentation, this.twist});

  factory Method.fromJson(Map<String, dynamic> json) {
    var mashTempList = json['mash_temp'] != null
        ? (json['mash_temp'] as List)
            .map((item) => MashTemp.fromJson(item))
            .toList()
        : null;

    return Method(
      mashTemp: mashTempList,
      fermentation: json['fermentation'] as Map<String, dynamic>?,
      twist: json['twist'],
    );
  }

  @override
  String toString() {
    return 'Method{mashTemp: $mashTemp, fermentation: $fermentation, twist: $twist}';
  }
}
