import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
     return const MaterialApp(
      home: formInput(),
    );
  }
}

class formInput extends StatefulWidget {
  const formInput({super.key});

  @override
  State<formInput> createState() => _formInputState();
}

class _formInputState extends State<formInput> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();

  void _login() {
    String username = _username.text;
    String password = _password.text;


    print('Username: $username');
    print('Password: $password');
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon (Icons.menu),
          onPressed: () {
            // Fungtion menu untuk klik
          },
        ),
        title: const Text("Form Login"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Image.asset(
                  'assets/images/logo1.png', // Replace this with the actual path to your image
                  height: 100, // Adjust the height as needed
                  width: 100, // Adjust the width as needed
                   // You can change the BoxFit to adjust the image's appearance
                ),
            const SizedBox(
              height: 20
              ),
            TextField(
              controller: _username,
              decoration: InputDecoration(
                hintText: "Nama Lengkap",
                labelText: "Nama Lengkap",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                )
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _password,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                )
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            
            ElevatedButton(
              onPressed: _login,
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}


