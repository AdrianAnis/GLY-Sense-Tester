import 'package:flutter/material.dart';

class ConnectPage extends StatelessWidget {
  const ConnectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 32),

              /// TITLE
              const Text(
                "Hubungkan Wristband",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40),
              Image.asset('assets/images/wristband.png'),
              const SizedBox(height: 12),
              const Text(
                "Hubungkan Wristband Anda",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              const Text(
                "Pastikan Bluetooth Anda aktif dan perangkat GLY\n-Sense berada di dekat ponsel Anda untuk mulai\n deteksi ",
                style: TextStyle(fontSize: 13, color: Colors.grey, height: 1.5),
                textAlign: TextAlign.center,
              ),

              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    //logic connect
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE391DA),
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                  ),
                  child: const Text(
                    "Hubungkan Perangkat",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 28),
            ],
          ),
        ),
      ),
    );
  }
}
