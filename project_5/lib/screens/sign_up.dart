import 'dart:io';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:project_5/screens/home_screen.dart';



class SignUpScreen extends StatefulWidget {
  final VoidCallback onLoginPressed;
  const SignUpScreen({super.key, required this.onLoginPressed});


  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}


class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();


  File? _profileImage;
  bool _isLoading = false;
  final ImagePicker _picker = ImagePicker();


  Future<void> _pickImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _profileImage = File(pickedFile.path);
      });
    }
  }


  Future<void> _signUp() async {
    if (_emailController.text.isEmpty ||
        _passwordController.text.length < 6 ||
        _usernameController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Бүх талбарыг зөв бөглөнө үү. Нууц үг 6-аас дээш тэмдэгттэй байх ёстой.')),
      );
      return;
    }


    setState(() {
      _isLoading = true;
    });


    try {
      UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );


      final String uid = userCredential.user!.uid;
      String profileImageUrl = 'https://via.placeholder.com/150';


      if (_profileImage != null) {
        final storageRef = FirebaseStorage.instance.ref().child('profile_pictures').child(uid);
        await storageRef.putFile(_profileImage!);
        profileImageUrl = await storageRef.getDownloadURL();
      }


      // Firestore-т шинэ хэрэглэгчийн мэдээллийг нэмэх
      await FirebaseFirestore.instance.collection('users').doc(uid).set({
        'uid': uid,
        'email': _emailController.text.trim(),
        'username': _usernameController.text.trim(),
        'profileImageUrl': profileImageUrl,
        'bio': '', // Танилцуулгын талбар нэмсэн
        'followers': [], // Дагагчдын жагсаалт (хоосон)
        'following': [], // Дагаж буй хүмүүсийн жагсаалт (хоосон)
        'posts': [], // Постуудын жагсаалт (хоосон)
        'stories': [], // Сторигийн жагсаалт (хоосон)
      });


      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      }
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(e.message ?? 'Алдаа гарлаа.')),
      );
    } on FirebaseException catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Бүртгэл үүсэх үед зураг хуулах алдаа гарлаа: ${e.message}')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Бүртгүүлэх үед алдаа гарлаа: $e')),
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
    _usernameController.dispose();
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
            'Бүртгүүлэх',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 48),
          GestureDetector(
            onTap: _pickImage,
            child: CircleAvatar(
              radius: 50,
              backgroundImage: _profileImage != null
                  ? FileImage(_profileImage!)
                  : null,
              child: _profileImage == null
                  ? const Icon(Icons.person, size: 50)
                  : null,
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _emailController,
            decoration: const InputDecoration(
              labelText: 'И-мэйл',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.emailAddress,
            autofillHints: const [AutofillHints.email],
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _passwordController,
            decoration: const InputDecoration(
              labelText: 'Нууц үг',
              border: OutlineInputBorder(),
            ),
            obscureText: true,
            autofillHints: const [AutofillHints.newPassword],
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _usernameController,
            decoration: const InputDecoration(
              labelText: 'Хэрэглэгчийн нэр',
              border: OutlineInputBorder(),
            ),
            autofillHints: const [AutofillHints.username],
          ),
          const SizedBox(height: 24),
          _isLoading
              ? const CircularProgressIndicator()
              : ElevatedButton(
            onPressed: _signUp,
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
            ),
            child: const Text('Бүртгүүлэх'),
          ),
          const SizedBox(height: 16),
          TextButton(
            onPressed: widget.onLoginPressed,
            child: const Text('Аль хэдийн бүртгэлтэй юу? Нэвтрэх'),
          ),
        ],
      ),
    );
  }
}