import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  final String status;

  const StatusCard({super.key, required this.status});

  String getImagePath() {
    switch (status) {
      case "rendah":
        return "assets/icons/Rendah.png";
      case "sedang":
        return "assets/icons/Sedang.png";
      case "tinggi":
        return "assets/icons/Tinggi.png";
      default:
        return "assets/icons/Sedang.png";
    }
  }

  Color getStatusColor() {
    switch (status) {
      case "rendah":
        return Colors.green;
      case "sedang":
        return Colors.orange;
      case "tinggi":
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    final imagePath = getImagePath();
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(left: 51, right: 51, top: 24, bottom: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(32),
        border: Border.all(color: Colors.grey.withOpacity(0.2)),
      ),
      child: Column(
        children: [
          Image.asset(imagePath),
          const SizedBox(height: 12),
          Text(
            "Status",
            style: TextStyle(fontSize: 16, color: Color(0xFFFB0B2B3)),
          ),
          Text(
            status[0].toUpperCase() + status.substring(1),
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: getStatusColor(),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Berdasarkan hasil pemindaian terbaru yang Anda lakukan hari ini',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, color: Color(0xFFFB0B2B3)),
          ),
          const SizedBox(height: 30),
          SizedBox(
            width: 280,
            height: 46,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFE391DA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
              onPressed: () {
                // next fitur mas
              },
              child: const Text(
                'Lihat Detail Screening',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
