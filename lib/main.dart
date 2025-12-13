import 'package:flutter/material.dart';

// Import all your screen files
import 'screens/login_screen.dart';
import 'screens/registration_screen.dart';
import 'screens/dashboard_screen.dart';
import 'screens/user_settings_screen.dart';
import 'screens/scan_screen.dart';
import 'screens/motor_details_screen.dart';
import 'screens/motor_issues_screen.dart';

void main() {
  runApp(const DMRInventoryApp());
}

class DMRInventoryApp extends StatelessWidget {
  const DMRInventoryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DMR Motor Inventory',
      
      // Global Theme Configuration
      theme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.white,
        useMaterial3: true,
        fontFamily: 'Arial', // As per SRS requirements
        
        // =======================================================
        // FIX: GLOBAL SNACKBAR THEME
        // =======================================================
        // This ensures error messages "float" above the UI instead of
        // pushing the Floating Action Button (Home) upwards.
        snackBarTheme: const SnackBarThemeData(
          behavior: SnackBarBehavior.floating, 
          backgroundColor: Colors.black87,
          elevation: 6.0,
          // Optional: Add margin to lift it slightly off the bottom edge
          insetPadding: EdgeInsets.all(16.0),
        ),
      ),
      
      // Navigation Routes
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/register': (context) => const RegistrationScreen(),
        '/dashboard': (context) => const DashboardScreen(),
        '/user_settings': (context) => const UserSettingsScreen(),
        '/scan': (context) => const ScanScreen(),
        '/motor_details': (context) => const MotorDetailsScreen(),
        '/motor_issues': (context) => const MotorIssuesScreen(),
      },
    );
  }
}