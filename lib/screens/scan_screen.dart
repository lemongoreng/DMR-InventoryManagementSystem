import 'package:flutter/material.dart';
import '../widgets/shared_widgets.dart';

class ScanScreen extends StatelessWidget {
  const ScanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: const Icon(Icons.arrow_back, color: Colors.black), onPressed: () => Navigator.pop(context)),
        actions: [IconButton(icon: const Icon(Icons.flash_on_outlined, color: Colors.black), onPressed: () {})],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Expanded(
            flex: 3,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(12)),
              child: const Center(child: Icon(Icons.camera_alt_outlined, size: 50, color: Colors.grey)),
            ),
          ),
          const SizedBox(height: 30),
          const Expanded(
            flex: 1,
            child: Column(children: [Text("Scan Motor Barcode", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)), SizedBox(height: 8), Text("Scan Barcode to update the\nprogress of the motor", textAlign: TextAlign.center, style: TextStyle(color: Colors.grey))]),
          ),
        ],
      ),
      floatingActionButton: buildHomeFab(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: buildBottomNavBar(context, currentRoute: '/scan'),
    );
  }
}