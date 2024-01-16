import 'package:test_exercise/core/model/volume.dart';

class MashTemp {
  final Volume? temp;
  final int? duration;

  MashTemp({this.temp, this.duration});

  factory MashTemp.fromJson(Map<String, dynamic> json) {
    return MashTemp(
      temp: json['temp'] != null ? Volume.fromJson(json['temp']) : null,
      duration: json['duration'],
    );
  }

  @override
  String toString() {
    return 'MashTemp{temp: $temp, duration: $duration}';
  }
}