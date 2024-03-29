/*
/// code : "string"
/// name : "string"
/// addr : "string"
/// type : "string"
/// lat : 0.0
/// lng : 0.0
/// stock_at : "string"
/// remain_stat : "string"
/// created_at : "string"

class Store {
  Store({
    String? code,
    String? name,
    String? addr,
    String? type,
    num? lat,
    num? lng,
    String? stockAt,
    String? remainStat,
    String? createdAt,
  }) {
    _code = code;
    _name = name;
    _addr = addr;
    _type = type;
    _lat = lat;
    _lng = lng;
    _stockAt = stockAt;
    _remainStat = remainStat;
    _createdAt = createdAt;
  }

  Store.fromJson(dynamic json) {
    _code = json['code'];
    _name = json['name'];
    _addr = json['addr'];
    _type = json['type'];
    _lat = json['lat'];
    _lng = json['lng'];
    _stockAt = json['stock_at'];
    _remainStat = json['remain_stat'];
    _createdAt = json['created_at'];
  }

  String? _code;
  String? _name;
  String? _addr;
  String? _type;
  num? _lat;
  num? _lng;
  String? _stockAt;
  String? _remainStat;
  String? _createdAt;

  Store copyWith({
    String? code,
    String? name,
    String? addr,
    String? type,
    num? lat,
    num? lng,
    String? stockAt,
    String? remainStat,
    String? createdAt,
  }) =>
      Store(
        code: code ?? _code,
        name: name ?? _name,
        addr: addr ?? _addr,
        type: type ?? _type,
        lat: lat ?? _lat,
        lng: lng ?? _lng,
        stockAt: stockAt ?? _stockAt,
        remainStat: remainStat ?? _remainStat,
        createdAt: createdAt ?? _createdAt,
      );

  String? get code => _code;

  String? get name => _name;

  String? get addr => _addr;

  String? get type => _type;

  num? get lat => _lat;

  num? get lng => _lng;

  String? get stockAt => _stockAt;

  String? get remainStat => _remainStat;

  String? get createdAt => _createdAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    map['name'] = _name;
    map['addr'] = _addr;
    map['type'] = _type;
    map['lat'] = _lat;
    map['lng'] = _lng;
    map['stock_at'] = _stockAt;
    map['remain_stat'] = _remainStat;
    map['created_at'] = _createdAt;
    return map;
  }
}
*/

class Store {
  Store({
    required this.addr,
    required this.code,
    required this.createdAt,
    required this.lat,
    required this.lng,
    required this.name,
    required this.remainStat,
    required this.stockAt,
    required this.type,
  });
  late final String addr;
  late final String code;
  late final String createdAt;
  late final double lat;
  late final double lng;
  late final String name;
  late final String remainStat;
  late final String stockAt;
  late final String type;
  late double km;

  Store.fromJson(Map<String, dynamic> json){
    addr = json['addr'];
    code = json['code'];
    createdAt = json['created_at'] ?? '';
    lat = json['lat'];
    lng = json['lng'];
    name = json['name'];
    remainStat = json['remain_stat'] ?? '';
    stockAt = json['stock_at'] ?? '';
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['addr'] = addr;
    data['code'] = code;
    data['created_at'] = createdAt;
    data['lat'] = lat;
    data['lng'] = lng;
    data['name'] = name;
    data['remain_stat'] = remainStat;
    data['stock_at'] = stockAt;
    data['type'] = type;
    return data;
  }
}