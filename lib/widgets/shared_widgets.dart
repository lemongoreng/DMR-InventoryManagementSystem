import 'package:flutter/material.dart';

// ==========================================
// SHARED UI ELEMENTS (Labels, Inputs, Buttons)
// ==========================================

// 1. Label Widget
Widget buildLabel(String text) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Text(
      text,
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Colors.grey[800],
      ),
    ),
  );
}

// 2. Text Field Widget
Widget buildTextField({
  required TextEditingController controller,
  required String hint,
  bool isObscure = false,
  TextInputType inputType = TextInputType.text,
  String? Function(String?)? validator,
}) {
  return TextFormField(
    controller: controller,
    obscureText: isObscure,
    keyboardType: inputType,
    decoration: InputDecoration(
      hintText: hint,
      hintStyle: const TextStyle(color: Colors.grey, fontSize: 12),
      contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Colors.grey),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: Colors.grey.shade400),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Colors.black),
      ),
      isDense: true,
    ),
    validator: validator ?? (value) {
      if (value == null || value.isEmpty) return 'Required';
      return null;
    },
  );
}

// 3. Button Style
ButtonStyle get primaryButtonStyle {
  return ElevatedButton.styleFrom(
    backgroundColor: Colors.grey[300], // Light grey from design
    foregroundColor: Colors.black,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  );
}

// ==========================================
// SHARED NAVIGATION WIDGETS
// ==========================================

// 4. The Central "Home" Floating Action Button
Widget buildHomeFab(BuildContext context) {
  return FloatingActionButton(
    onPressed: () {
      // If we are not already on the dashboard, go there
      // Using pushNamedAndRemoveUntil to clear stack and prevent "Back" button issues
      Navigator.pushNamedAndRemoveUntil(
          context, '/dashboard', (route) => false);
    },
    backgroundColor: const Color(0xFF3F51B5), // Indigo
    elevation: 4.0,
    shape: const CircleBorder(),
    child: const Icon(Icons.home, color: Colors.white, size: 36),
  );
}

// 5. The Bottom Navigation Bar
Widget buildBottomNavBar(BuildContext context, {required String currentRoute}) {
  return BottomAppBar(
    shape: const CircularNotchedRectangle(),
    notchMargin: 10.0,
    color: const Color(0xFF3F51B5), // Indigo
    child: SizedBox(
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // LEFT ITEM: SCAN CODE
          GestureDetector(
            onTap: () {
              if (currentRoute != '/scan') {
                Navigator.pushNamed(context, '/scan');
              }
            },
            behavior: HitTestBehavior.opaque,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.qr_code_scanner, 
                  color: currentRoute == '/scan' ? Colors.white : Colors.white70, // Highlight if active
                  size: currentRoute == '/scan' ? 28 : 24, // Slightly bigger if active
                ),
                const SizedBox(height: 4),
                Text(
                  "Scan Code",
                  style: TextStyle(
                    color: currentRoute == '/scan' ? Colors.white : Colors.white70,
                    fontSize: 12,
                    fontWeight: currentRoute == '/scan' ? FontWeight.bold : FontWeight.normal,
                  ),
                )
              ],
            ),
          ),

          // SPACER (For the Home Button in the middle)
          const SizedBox(width: 40),

          // RIGHT ITEM: OTHERS (Placeholder)
          GestureDetector(
            onTap: () {
              // Future: Navigate to 'Others' or 'Settings'
            },
            behavior: HitTestBehavior.opaque,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.grid_view, color: Colors.white70),
                SizedBox(height: 4),
                Text("Others", style: TextStyle(color: Colors.white70, fontSize: 12))
              ],
            ),
          ),
        ],
      ),
    ),
  );
}