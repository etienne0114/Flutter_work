import 'package:flutter/material.dart';
import 'package:flutter_work/pages/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  String confirmedEmail = 'etiennetuyihamye@gmail.com';
  String confirmedPassword = '1234';

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPassword.dispose();
    super.dispose(); // Call super.dispose() after disposing controllers
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/images/bg_1.jpg', fit: BoxFit.cover),
          ),
          // Page content
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    FittedBox(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.teal,
                          letterSpacing: 2,
                          fontSize:
                              40, // Adjusted the font size for better visual appeal
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      controller: controllerEmail,
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                      decoration: InputDecoration(
                        hintText: 'Email',

                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      controller: controllerPassword,
                      style: TextStyle(color: Colors.white, fontSize: 20.0),
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      obscureText: true, // Obscure the password input
                    ),
                    SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () {
                        onLoginPressed();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal,
                        shadowColor: Colors.white,
                        minimumSize: Size(double.infinity, 40),
                      ),
                      child: Text(
                        'Log In',
                        style: TextStyle(color: Colors.white, fontSize: 30.0),
                      ),
                    ),
                    SizedBox(height: 50.0),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onLoginPressed() {
    if (confirmedEmail == controllerEmail.text &&
        confirmedPassword == controllerPassword.text) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const HomePage();
          },
        ),
        (route) => false,
      );
    } else {
      // Show error message if login fails
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Invalid email or password')));
    }
  }
}
