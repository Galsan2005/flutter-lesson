import 'package:flutter/material.dart';
import 'package:lesson_day_31/home.dart';
import 'package:lesson_day_31/screens/signup_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;

  void login(){
    if(_formKey.currentState!.validate()){
      print("Email: ${_emailController.text}");
      print("Password: ${_passwordController.text}");
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Logging up..."))
      );
      Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Нэвтрэх"), centerTitle: true),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                    prefix: Icon(Icons.email),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Email ээ оруулна уу";
                    }
                    if (!value.contains("@") || !value.contains(".")) {
                      return "Буруу email хаяг";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  controller: _passwordController,
                  obscureText: _obscureText,
                  decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(),
                      prefix: Icon(Icons.lock),
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      }, icon: _obscureText ? Icon(Icons.visibility_off) : Icon(Icons.visibility))
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Нууц үгээ орууна уу";
                    }
                    if (value.length < 6) {
                      return "at least 6 number";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(onPressed: () {
                  login();
                }, child: Text("Log in"),style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ))),
                SizedBox(height: 20,),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupScreen()));
                }, child: Text(
                    "Have not you already signed up?, Sign up"
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
