class Reports {
  Reports({
    required this.astrology,
    required this.psychology,
    required this.sexuality,
    required this.loveLanguage,
  });
  late final Astrology astrology;
  late final Psychology psychology;
  late final Sexuality sexuality;
  late final LoveLanguage loveLanguage;
  
  Reports.fromJson(Map<String, dynamic> json){
    astrology = Astrology.fromJson(json['astrology']);
    psychology = Psychology.fromJson(json['psychology']);
    sexuality = Sexuality.fromJson(json['sexuality']);
    loveLanguage = LoveLanguage.fromJson(json['loveLanguage']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['astrology'] = astrology.toJson();
    _data['psychology'] = psychology.toJson();
    _data['sexuality'] = sexuality.toJson();
    _data['loveLanguage'] = loveLanguage.toJson();
    return _data;
  }
}

class Astrology {
  Astrology({
    required this.sun,
    required this.moon,
  });
  late final List<Sun> sun;
  late final List<Moon> moon;
  
  Astrology.fromJson(Map<String, dynamic> json){
    sun = List.from(json['sun']).map((e)=>Sun.fromJson(e)).toList();
    moon = List.from(json['moon']).map((e)=>Moon.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['sun'] = sun.map((e)=>e.toJson()).toList();
    _data['moon'] = moon.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Sun {
  Sun({
    required this.id,
    required this.sign,
    required this.planet,
    required this.category,
    required this.text,
    required this.V,
  });
  late final String id;
  late final String sign;
  late final String planet;
  late final int category;
  late final Text text;
  late final int V;
  
  Sun.fromJson(Map<String, dynamic> json){
    id = json['_id'];
    sign = json['sign'];
    planet = json['planet'];
    category = json['category'];
    text = Text.fromJson(json['text']);
    V = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['sign'] = sign;
    _data['planet'] = planet;
    _data['category'] = category;
    _data['text'] = text.toJson();
    _data['__v'] = V;
    return _data;
  }
}

class Text {
  Text({
    required this.en,
    required this.fr,
  });
  late final String en;
  late final String fr;
  
  Text.fromJson(Map<String, dynamic> json){
    en = json['en'];
    fr = json['fr'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['en'] = en;
    _data['fr'] = fr;
    return _data;
  }
}

class Moon {
  Moon({
    required this.id,
    required this.sign,
    required this.planet,
    required this.category,
    required this.text,
    required this.V,
  });
  late final String id;
  late final String sign;
  late final String planet;
  late final int category;
  late final Text text;
  late final int V;
  
  Moon.fromJson(Map<String, dynamic> json){
    id = json['_id'];
    sign = json['sign'];
    planet = json['planet'];
    category = json['category'];
    text = Text.fromJson(json['text']);
    V = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['sign'] = sign;
    _data['planet'] = planet;
    _data['category'] = category;
    _data['text'] = text.toJson();
    _data['__v'] = V;
    return _data;
  }
}

class Psychology {
  Psychology({
    required this.en,
    required this.fr,
    required this.ar,
  });
  late final String en;
  late final String fr;
  late final String ar;
  
  Psychology.fromJson(Map<String, dynamic> json){
    en = json['en'];
    fr = json['fr'];
    ar = json['ar'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['en'] = en;
    _data['fr'] = fr;
    _data['ar'] = ar;
    return _data;
  }
}

class Sexuality {
  Sexuality({
    required this.en,
    required this.fr,
    required this.ar,
  });
  late final String en;
  late final String fr;
  late final String ar;
  
  Sexuality.fromJson(Map<String, dynamic> json){
    en = json['en'];
    fr = json['fr'];
    ar = json['ar'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['en'] = en;
    _data['fr'] = fr;
    _data['ar'] = ar;
    return _data;
  }
}

class LoveLanguage {
  LoveLanguage({
    required this.en,
    required this.fr,
    required this.ar,
  });
  late final String en;
  late final String fr;
  late final String ar;
  
  LoveLanguage.fromJson(Map<String, dynamic> json){
    en = json['en'];
    fr = json['fr'];
    ar = json['ar'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['en'] = en;
    _data['fr'] = fr;
    _data['ar'] = ar;
    return _data;
  }
}

