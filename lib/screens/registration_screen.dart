import 'package:flutter/material.dart';
import '../widgets/shared_widgets.dart'; // Import reusable widgets

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  Future<void> _handleRegister() async {
    if (_formKey.currentState!.validate()) {
      setState(() => _isLoading = true);

      // Simulate Firebase User Creation
      await Future.delayed(const Duration(seconds: 2));
      
      if (mounted) {
        setState(() => _isLoading = false);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Account Created! Please Login.')),
        );
        Navigator.pop(context); // Go back to Login
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  'Join the DMR Inventory System',
                  style: TextStyle(color: Colors.grey[600], fontSize: 14),
                ),
                const SizedBox(height: 30),

                // Username
                buildLabel('Username'),
                const SizedBox(height: 8),
                buildTextField(
                  controller: _usernameController,
                  hint: 'Choose a username',
                ),
                const SizedBox(height: 15),

                // Email
                buildLabel('Email Address'),
                const SizedBox(height: 8),
                buildTextField(
                  controller: _emailController,
                  hint: 'Enter your email',
                  inputType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 15),

                // Password
                buildLabel('Password'),
                const SizedBox(height: 8),
                buildTextField(
                  controller: _passwordController,
                  hint: 'Create a password',
                  isObscure: true,
                ),
                const SizedBox(height: 15),

                // Confirm Password
                buildLabel('Confirm Password'),
                const SizedBox(height: 8),
                buildTextField(
                  controller: _confirmPasswordController,
                  hint: 'Re-enter password',
                  isObscure: true,
                  validator: (val) {
                    if (val != _passwordController.text) return 'Passwords do not match';
                    return null;
                  }
                ),
                const SizedBox(height: 25),

                // Register Button
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: _isLoading ? null : _handleRegister,
                    style: primaryButtonStyle,
                    child: _isLoading
                        ? const SizedBox(
                            height: 20, width: 20,
                            child: CircularProgressIndicator(strokeWidth: 2, color: Colors.black))
                        : const Text('Register', style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}