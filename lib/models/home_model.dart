class HomeModel {
  final String status;
  final double heartRate;
  final double spo2;

  HomeModel({
    required this.status,
    required this.heartRate,
    required this.spo2,
  });

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return HomeModel(
      status: json['status'],
      heartRate: (json['heartRate'] as num).toDouble(),
      spo2: (json['spo2'] as num).toDouble(),
    );
  }
}
