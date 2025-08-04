import 'package:flutter/material.dart';
import 'package:lesson_day_31/screens/login_page.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  bool _obscureText = true;
  bool _obscureText1 = true;


  void signup(){
    if(_formKey.currentState!.validate()){
      print("Email: ${_emailController.text}");
      print("Password: ${_passwordController.text}");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Signing up..."))
      );
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Бүртгүүлэх"), centerTitle: true),
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
                TextFormField(
                  controller: _confirmPasswordController,
                  obscureText: _obscureText1,
                  decoration: InputDecoration(
                    labelText: "Confirm Password",
                    border: OutlineInputBorder(),
                    prefix: Icon(Icons.lock),
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                          _obscureText1 = !_obscureText1;
                        });
                      }, icon: _obscureText1 ? Icon(Icons.visibility_off) : Icon(Icons.visibility))
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Нууц үгээ давтан орууна уу";
                    }
                    if (value != _passwordController.text) {
                      return "Do not match previous password";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(onPressed: () {
                  signup();


                }, child: Text("Sign up"),style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ))),
                SizedBox(height: 20,),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                }, child: Text(
                  "Have you already signed up?, Log in"
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
