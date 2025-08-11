import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project_5/screens/home_screen.dart';


class LoginScreen extends StatefulWidget {
  final VoidCallback onSignUpPressed;
  const LoginScreen({super.key, required this.onSignUpPressed});


  @override
  _LoginScreenState createState() => _LoginScreenState();
}


class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();


  bool _isLoading = false;


  // Нэвтрэх функцийг гүйцэтгэх
  Future<void> _login() async {
    // Талбарууд хоосон эсэхийг шалгах
    if (_emailController.text.isEmpty || _passwordController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('И-мэйл болон нууц үгээ оруулна уу.')),
      );
      return;
    }


    setState(() {
      _isLoading = true;
    });


    try {
      // Firebase Authentication-аар нэвтрэх
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );


      // Амжилттай нэвтэрсний дараа Home Screen руу шилжих
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      }
    } on FirebaseAuthException catch (e) {
      // Алдаа гарвал SnackBar-аар харуулах
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.message ?? 'Нэвтрэх үед алдаа гарлаа.')),
      );
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }


  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Нэвтрэх',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 48),
          TextField(
            controller: _emailController,
            decoration: const InputDecoration(
              labelText: 'И-мэйл',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _passwordController,
            decoration: const InputDecoration(
              labelText: 'Нууц үг',
              border: OutlineInputBorder(),
            ),
            obscureText: true,
          ),
          const SizedBox(height: 24),
          _isLoading
              ? const CircularProgressIndicator()
              : ElevatedButton(
            onPressed: _login,
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
            ),
            child: const Text('Нэвтрэх'),
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: widget.onSignUpPressed,
            child: const Text('Бүртгэлгүй юу? Бүртгүүлэх'),
          ),
        ],
      ),
    );
  }
}
