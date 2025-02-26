import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Illustration Image
            SizedBox(
              height: 150,
              child: Image.asset('assets/pizza.png'),
            ),
            const SizedBox(height: 20),
            
            // Welcome Text
            const Text(
              "Welcome Back",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Good food, good mood!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 20),

            // Username Input Field
            SizedBox(
              width: 300,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  hintText: "Username",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ),
            const SizedBox(height: 15),

            // Password Input Field
            SizedBox(
              width: 300,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock),
                  hintText: "Password",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  suffixIcon: const Icon(Icons.visibility),
                ),
              ),
            ),
            
            // Forget Password
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text("Forget Password?", style: TextStyle(color: Color(0xFFFECC31))),
              ),
            ),

            // Login Button
            SizedBox(
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFECC31),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                ),
                onPressed: () {},
                child: const Text("LOGIN", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
              ),
            ),
            const SizedBox(height: 15),

            // OR Divider
            Row(
              children: [
                Expanded(child: Divider()),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("OR"),
                ),
                Expanded(child: Divider()),
              ],
            ),
            const SizedBox(height: 15),

            // Google Sign-In Button
            SizedBox(
              width: 300,
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: const BorderSide(color: Colors.grey),
                  ),
                ),
                onPressed: () {},
                icon: Image.asset('assets/google_logo.png', height: 20),
                label: const Text("Sign-In with Google", style: TextStyle(color: Colors.black)),
              ),
            ),
            const SizedBox(height: 20),

            // Signup Link
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an Account?"),
                TextButton(
                  onPressed: () {},
                  child: const Text("Sign Up", style: TextStyle(color: Color(0xFFFECC31))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
