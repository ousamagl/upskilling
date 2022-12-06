class Config {
  Config({
    required this.incognito,
    required this.preferredGender,
    required this.preferredLanguage,
    required this.ageMaxPreference,
    required this.ageMinPreference,
    required this.sound,
    required this.vibration,
    required this.showAge,
    required this.showDistance,
    required this.showAsPremiumUser,
    required this.maxDistance,
  });
  late final bool incognito;
  late final int preferredGender;
  late final String preferredLanguage;
  late final int ageMaxPreference;
  late final int ageMinPreference;
  late final bool sound;
  late final bool vibration;
  late final bool showAge;
  late final bool showDistance;
  late final bool showAsPremiumUser;
  late final int maxDistance;
  
  Config.fromJson(Map<String, dynamic> json){
    incognito = json['incognito'];
    preferredGender = json['preferredGender'];
    preferredLanguage = json['preferredLanguage'];
    ageMaxPreference = json['ageMaxPreference'];
    ageMinPreference = json['ageMinPreference'];
    sound = json['sound'];
    vibration = json['vibration'];
    showAge = json['showAge'];
    showDistance = json['showDistance'];
    showAsPremiumUser = json['showAsPremiumUser'];
    maxDistance = json['maxDistance'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['incognito'] = incognito;
    _data['preferredGender'] = preferredGender;
    _data['preferredLanguage'] = preferredLanguage;
    _data['ageMaxPreference'] = ageMaxPreference;
    _data['ageMinPreference'] = ageMinPreference;
    _data['sound'] = sound;
    _data['vibration'] = vibration;
    _data['showAge'] = showAge;
    _data['showDistance'] = showDistance;
    _data['showAsPremiumUser'] = showAsPremiumUser;
    _data['maxDistance'] = maxDistance;
    return _data;
  }
}

