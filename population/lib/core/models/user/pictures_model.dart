class Pictures {
  Pictures({
    required this.duration,
    required this.fileName,
    required this.index,
    required this.isPrivate,
    required this.isSafe,
    required this.url,
    required this.id,
  });
  late final int duration;
  late final String fileName;
  late final int index;
  late final bool isPrivate;
  late final bool isSafe;
  late final String url;
  late final String id;
  
  Pictures.fromJson(Map<String, dynamic> json){
    duration = json['duration'];
    fileName = json['fileName'];
    index = json['index'];
    isPrivate = json['isPrivate'];
    isSafe = json['isSafe'];
    url = json['url'];
    id = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['duration'] = duration;
    _data['fileName'] = fileName;
    _data['index'] = index;
    _data['isPrivate'] = isPrivate;
    _data['isSafe'] = isSafe;
    _data['url'] = url;
    _data['_id'] = id;
    return _data;
  }
}