import 'package:flutter/material.dart';

class DeviceStatusCard extends StatelessWidget {
  const DeviceStatusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 28, right: 28, top: 12, bottom: 12),
      decoration: BoxDecoration(
        color: Color(0xFFFFFF5FE),
        borderRadius: BorderRadius.circular(32),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset('assets/icons/blueconnect.png'),
              SizedBox(width: 8),
              Text(
                "Wristband Terhubung",
                style: TextStyle(color: Color(0xFFFE391DA), fontSize: 14),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "Baterai 67%",
                style: TextStyle(
                  color: Color(0xFFFE391DA),
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              SizedBox(width: 8),
              CircleAvatar(
                radius: 4,
                backgroundColor: const Color.fromARGB(255, 112, 255, 116),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
