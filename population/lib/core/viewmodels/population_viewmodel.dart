import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:population/core/models/city_model.dart';
import 'package:population/core/models/flag_model.dart';
import 'package:population/core/services/population_services.dart';
import 'package:population/main.dart';

class PopulationViewModel extends ChangeNotifier {
  final PopulationServices _populationServices = GetIt.instance<PopulationServices>();

  List<CityModel>? _cities;
  List<FlagModel>? _flags;
  String _filter = '';

  bool _isReady = false;

  ///Getters
  String get filter => _filter;
  List<CityModel>? get cities => _cities;
  List<FlagModel>? get flags => _flags;
  bool get isReady => _isReady;

  ///init
  Future<void> init() async {
    await getCities();
    await getFlags();
    _isReady = true;
     //MyApp.navigatorKey.currentState.pushReplacement(MaterialPageRoute(builder:(context) => )
    notifyListeners();

  }

  ///logic
  Future<void> getCities() async {
    Response response = await _populationServices.getCities();
    if (response.statusCode == 200) {
      Map<String, dynamic> _collection = response.data;
      _cities = List<CityModel>.from(_collection['data'].map((json) => (CityModel.fromJson(json))));
    } else {
      //todo: show error popup
      debugPrint('get cities failed');
    }
  }

  Future<void> getFlags() async {
    Response response = await _populationServices.getFlags();
    if (response.statusCode == 200) {
      Map<String, dynamic> _collection = response.data;
      _flags = List<FlagModel>.from(_collection['data'].map((json) => (FlagModel.fromJson(json))));
    } else {
      //todo: show error popup
      debugPrint('get cities failed');
    }
  }
}
