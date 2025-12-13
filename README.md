# DMR Motor Inventory Management System 🏭

**Version:** 1.0  
**Group:** Quantum Savants

### 📂 Project Structure
```text
lib/
├── main.dart
├── screens/
│   ├── dashboard_screen.dart
│   ├── login_screen.dart
│   ├── registration_screen.dart
│   ├── scan_screen.dart
│   ├── user_settings_screen.dart
│   ├── motor_details_screen.dart
│   └── motor_issues_screen.dart
└── widgets/
    └── shared_widgets.dart

📋 About The Project
The Sub-Warehouse Motor Inventory Management System is a centralized mobile application designed for Daiken Miri Sdn. Bhd. (DMR).

Currently, DMR uses scattered Excel sheets for motor tracking, leading to data fragmentation and inefficiencies. This project digitalizes these operations, providing a native Android application that facilitates real-time tracking, secure data storage, and visual warehouse management.

✨ Key Features
This system is designed with two distinct user roles: Administrators and Technicians.

🛠 Technician Module
Register Motor: New workflow to register motors, capture details, and log initial defects/issues.

Real-time Status Updates: Change motor status (e.g., In-Use, In-Repair, Damaged) instantly.

Visual Warehouse Map: Locate motors using a digital map of racks, levels, and sections.

Search: Quickly find motors by ID, Tag, or Technical Specifications (HP, RPM, Voltage).

Service History: View complete repair and maintenance logs.

Scan Code: Interface for barcode/QR scanning to retrieve motor details.

🛡️ Administrator Module
User Management: Create accounts and assign roles (RBAC).

Inventory Control: Perform CRUD operations on motor records.

Layout Configuration: Dynamically modify the warehouse structure (racks/partitions).

📱 Tech Stack
Frontend: Flutter (Dart)

Backend: Google Firebase (Authentication & Firestore)

Platform: Native Android

Hardware Features: Camera integration for OCR/Condition Capture

🚀 Getting Started
Prerequisites
Android Studio with Flutter SDK installed.

Android Device/Emulator (Min RAM: 3GB, Android 10.0+).

Active Internet connection (Wi-Fi/Cellular) for Firebase sync. 

Installation
1. Clone the repository:
    git clone [https://github.com/your-username/dmr-inventory-system.git](https://github.com/your-username/dmr-inventory-system.git)

2.  Navigate to the project directory:
    cd dmr-inventory-system

3.  Install dependencies:
    flutter pub get

4.  Run the app:
    flutter run

Note: This project requires a valid google-services.json file to connect to the Firebase backend.

👥 The Team (Quantum Savants)
Jeremy Tommy Ajeng Emang (99286)
Dexter Skudd anak John Rizal (101630)
Muhammad Faiq bin Suhadi (82723)
Eamonn Nathanael Jong Kwok (83691)
Victor Aezekiel Isaac Zeno (86251)
Naomi Ruran Odau (97620)

Prepared for Software Engineering Lab (TMA3084), UNIMAS.