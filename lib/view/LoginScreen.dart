import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _form  = GlobalKey<FormState>();
  final TextEditingController _login = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Login'),
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Form(
          key: _form,
          child: ListView(
            children: [
              TextFormField(
                controller: _login,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: "Login"
                ),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return "Informe um usuário!";
                  }
                },
              ),
              Container(height: 5),
              TextFormField(
                controller: _password,
                obscureText: true,
                decoration: const InputDecoration(
                    icon: Icon(Icons.key),
                    labelText: "Password",
                ),
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return "Informe um usuário!";
                  }
                },
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: ElevatedButton(
                  child: const Text("Login"),
                  onPressed: () async {
                    if (_form.currentState!.validate()) {
                        
                    }
                  },
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
