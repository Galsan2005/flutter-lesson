import 'package:flutter/material.dart';
import 'package:project_4/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final _formKey = GlobalKey<FormState>(); // Form-г удирдах түлхүүр

String? _name;
String? _email;

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/back_img.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(child: Image.asset("assets/images/logo.png")),
              SizedBox(height: 170),
              Container(
                width: 440,
                height: 542,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  color: Colors.black.withOpacity(0.6),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 50, right: 50, top: 30),
                  child: Form(
                    key: _formKey, // формоо холбож өгнө
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sign in",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        // Имэйл оруулах талбар
                        TextFormField(
                          style: TextStyle(
                            color: Colors.white, // ✳️ Текстийн өнгө
                            fontSize: 16, // Фонтын хэмжээ (заавал биш)
                            fontWeight:
                                FontWeight.w700, // Фонтын жин (заавал биш)
                          ),
                          decoration: InputDecoration(
                            labelText: "Email",
                            hintText: "Email",
                            filled: true,
                            fillColor: Colors.black,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(44),
                              borderSide: BorderSide(
                                color: Color(0xff3A3A42),
                                width: 2,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(44),
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2,
                              ),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(44),
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 1.5,
                              ),
                            ),
                          ),
                          // decoration: InputDecoration(labelText: 'Email'),
                          validator: (value) {
                            if (value == null || !value.contains('@')) {
                              return 'Зөв имэйл оруулна уу';
                            }
                            return null;
                          },
                          onSaved: (value) => _email = value,
                        ),
                        // Нэр оруулах талбар
                        TextFormField(
                          style: TextStyle(
                            color: Colors.white, // ✳️ Текстийн өнгө
                            fontSize: 16, // Фонтын хэмжээ (заавал биш)
                            fontWeight:
                                FontWeight.w700, // Фонтын жин (заавал биш)
                          ),
                          decoration: InputDecoration(
                            labelText: 'Password',
                            hintText: "Password",
                            filled: true,
                            fillColor: Colors.black,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(44),
                              borderSide: BorderSide(
                                color: Color(0xff3A3A42),
                                width: 2,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.white,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(44),
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(44),
                              borderSide: BorderSide(
                                color: Colors.red,
                                width: 1.5,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Password оруулна уу';
                            }
                            return null;
                          },
                          onSaved: (value) => _name = value,
                        ),
                        Text(
                          "Forgot Password?",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff11DCE8),
                          ),
                        ),
                        // Илгээх товч
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: Colors.transparent,
                            // 🚫 Background арилгана
                            shadowColor: Colors.transparent,
                            // 🚫 Сүүдэр арилгана
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // Бүх validator амжилттай бол form хадгална
                              _formKey.currentState!.save();
                              print('Name: $_name');
                              print('Email: $_email');

                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text('Амжилттай илгээгдлээ!'),
                                ),
                              );
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomePage(),
                                ),
                              );
                            }
                          },
                          child: Container(
                            width: 350,
                            height: 50,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xFF00E5E5),
                                  Color(0xFF72A5F2),
                                  Color(0xFFE961FF),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(30),
                            ),

                            child: Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Text(
                                'Sign in',
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 24,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Divider(color: Colors.grey, thickness: 1),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: Text(
                                'or sign in using',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Divider(color: Colors.grey, thickness: 1),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/images/soc 1.png"),
                            Image.asset("assets/images/soc 2.png"),
                            Image.asset("assets/images/soc 3.png"),
                            // Container(child: Image(image: image),)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text.rich(
                              TextSpan(
                                text: "Don’t have an account?",
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                                children: [
                                  TextSpan(
                                    text: "Sign up",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: Color(0xff11DCE8),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
