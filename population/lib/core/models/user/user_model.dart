import 'package:population/core/models/user/config_model.dart';
import 'package:population/core/models/user/geo_location_model.dart';
import 'package:population/core/models/user/pictures_model.dart';

import 'reports_model.dart';

class UserModel {
  UserModel({
    required this.config,
    required this.geoLocation,
    required this.reports,
    required this.id,
    required this.isBoosted,
    required this.monthOfBirth,
    required this.dayOfBirth,
    required this.excluded,
    required this.banned,
    required this.deleted,
    required this.cluster,
    required this.hasCompletedTutorial,
    required this.tags,
    required this.pictures,
    required this.birthday,
    required this.gender,
    required this.job,
    required this.lastName,
    required this.firstName,
    required this.mostCompatible,
    required this.createdAt,
    required this.updatedAt,
    required this.placeOfBirth,
    required this.timeOfBirth,
  });
  late final Config config;
  late final GeoLocation geoLocation;
  late final Reports reports;
  late final String id;
  late final bool isBoosted;
  late final int monthOfBirth;
  late final int dayOfBirth;
  late final bool excluded;
  late final bool banned;
  late final bool deleted;
  late final String cluster;
  late final bool hasCompletedTutorial;
  late final List<String> tags;
  late final List<Pictures> pictures;
  late final String birthday;
  late final int gender;
  late final String job;
  late final String lastName;
  late final String firstName;
  late final List<dynamic> mostCompatible;
  late final String createdAt;
  late final String updatedAt;
  late final String placeOfBirth;
  late final String timeOfBirth;
  
  UserModel.fromJson(Map<String, dynamic> json){
    config = Config.fromJson(json['config']);
    geoLocation = GeoLocation.fromJson(json['geoLocation']);
    reports = Reports.fromJson(json['reports']);
    id = json['_id'];
    isBoosted = json['isBoosted'];
    monthOfBirth = json['monthOfBirth'];
    dayOfBirth = json['dayOfBirth'];
    excluded = json['excluded'];
    banned = json['banned'];
    deleted = json['deleted'];
    cluster = json['cluster'];
    hasCompletedTutorial = json['hasCompletedTutorial'];
    tags = List.castFrom<dynamic, String>(json['tags']);
    pictures = List.from(json['pictures']).map((e)=>Pictures.fromJson(e)).toList();
    birthday = json['birthday'];
    gender = json['gender'];
    job = json['job'];
    lastName = json['lastName'];
    firstName = json['firstName'];
    mostCompatible = List.castFrom<dynamic, dynamic>(json['mostCompatible']);
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    placeOfBirth = json['placeOfBirth'];
    timeOfBirth = json['timeOfBirth'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['config'] = config.toJson();
    _data['geoLocation'] = geoLocation.toJson();
    _data['reports'] = reports.toJson();
    _data['_id'] = id;
    _data['isBoosted'] = isBoosted;
    _data['monthOfBirth'] = monthOfBirth;
    _data['dayOfBirth'] = dayOfBirth;
    _data['excluded'] = excluded;
    _data['banned'] = banned;
    _data['deleted'] = deleted;
    _data['cluster'] = cluster;
    _data['hasCompletedTutorial'] = hasCompletedTutorial;
    _data['tags'] = tags;
    _data['pictures'] = pictures.map((e)=>e.toJson()).toList();
    _data['birthday'] = birthday;
    _data['gender'] = gender;
    _data['job'] = job;
    _data['lastName'] = lastName;
    _data['firstName'] = firstName;
    _data['mostCompatible'] = mostCompatible;
    _data['createdAt'] = createdAt;
    _data['updatedAt'] = updatedAt;
    _data['placeOfBirth'] = placeOfBirth;
    _data['timeOfBirth'] = timeOfBirth;
    return _data;
  }
}

