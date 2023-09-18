import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Login(),
      )
  );
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
              leading: Icon(Icons.home),
              title: Text("Login")
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network("https://1000logos.net/wp-content/uploads/2021/11/Fiverr-Logo.png",
                      height: 250,
                    ),
                    SizedBox(height: 20),
                    TextField(
                        controller: username,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25)
                            ),
                            labelText: "Username"
                        )
                    ),
                    SizedBox(height: 10),
                    TextField(
                        controller: password,
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25)
                            ),
                            labelText: "Kata sandi"
                        )
                    ),
                    SizedBox(height: 30),
                    ElevatedButton(
                        onPressed: (){},
                        child: Text("Login")
                    ),
                  ]
              ),
            ),
          )
      ),
    );
  }
}