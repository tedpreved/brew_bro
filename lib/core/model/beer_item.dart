import 'package:test_exercise/core/model/method.dart';
import 'package:test_exercise/core/model/volume.dart';


class BeerItem {
  final int id;
  final String name;
  final String tagline;
  final String firstBrewed;
  final String description;
  final String imageUrl;
  final double? abv;
  final int? ibu;
  final int? targetFg;
  final int? targetOg;
  final double? ebc;
  final double? srm;
  final double? ph;
  final double? attenuationLevel;
  final Volume? volume;
  final Volume? boilVolume;
  final Method? method;

  BeerItem({
    required this.id,
    required this.name,
    required this.tagline,
    required this.firstBrewed,
    required this.description,
    required this.imageUrl,
    this.abv,
    this.ibu,
    this.targetFg,
    this.targetOg,
    this.ebc,
    this.srm,
    this.ph,
    this.attenuationLevel,
    this.volume,
    this.boilVolume,
    this.method,
  });

  factory BeerItem.fromJson(Map<String, dynamic> json) {
    return BeerItem(
      id: json['id'],
      name: json['name'],
      tagline: json['tagline'],
      firstBrewed: json['first_brewed'],
      description: json['description'],
      imageUrl: json['image_url'],
      abv: (json['abv'] as num?)?.toDouble(),
      ibu: json['ibu'] is int ? json['ibu'] : (json['ibu'] as double?)?.toInt(),
      targetFg: json['target_fg'] is int ? json['target_fg'] : (json['target_fg'] as double?)?.toInt(),
      targetOg: json['target_og'] is int ? json['target_og'] : (json['target_og'] as double?)?.toInt(),
      ebc: (json['ebc'] as num?)?.toDouble(),
      srm: (json['srm'] as num?)?.toDouble(),
      ph: (json['ph'] as num?)?.toDouble(),
      attenuationLevel: (json['attenuation_level'] as num?)?.toDouble(),
      volume: json['volume'] != null ? Volume.fromJson(json['volume']) : null,
      boilVolume: json['boil_volume'] != null ? Volume.fromJson(json['boil_volume']) : null,
      method: json['method'] != null ? Method.fromJson(json['method']) : null,
    );
  }

  @override
  String toString() {
    return 'Beer{id: $id, name: $name, tagline: $tagline, firstBrewed: $firstBrewed, description: $description, imageUrl: $imageUrl, abv: $abv, ibu: $ibu, targetFg: $targetFg, targetOg: $targetOg, ebc: $ebc, srm: $srm, ph: $ph, attenuationLevel: $attenuationLevel, volume: $volume, boilVolume: $boilVolume, method: $method}';
  }
}
