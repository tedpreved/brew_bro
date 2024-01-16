class Volume {
  final int value;
  final String unit;

  Volume({required this.value, required this.unit});

  factory Volume.fromJson(Map<String, dynamic> json) {
    return Volume(
      value: json['value'],
      unit: json['unit'],
    );
  }

  @override
  String toString() {
    return 'Volume{value: $value, unit: $unit}';
  }
}
