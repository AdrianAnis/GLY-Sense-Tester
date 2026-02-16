class HomeModel {
  final double heartRate;
  final double spo2;
  final double battery;

  HomeModel({
    required this.heartRate,
    required this.spo2,
    required this.battery,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      heartRate: _parseToDouble(json["hr"]),
      spo2: _parseToDouble(json["spo2"]),
      battery: _parseToDouble(json["battery"]),
    );
  }

  static double _parseToDouble(dynamic value) {
    if (value == null) return 0.0;

    if (value is num) return value.toDouble();

    if (value is String) {
      return double.tryParse(value) ?? 0.0;
    }

    return 0.0;
  }
}
