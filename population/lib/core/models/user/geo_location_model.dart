class GeoLocation {
  GeoLocation({
    required this.latitude,
    required this.longitude,
  });
  late final int latitude;
  late final int longitude;
  
  GeoLocation.fromJson(Map<String, dynamic> json){
    latitude = json['latitude'];
    longitude = json['longitude'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['latitude'] = latitude;
    _data['longitude'] = longitude;
    return _data;
  }
}

