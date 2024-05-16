import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey.shade200,
        body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              const Icon(
                Icons.person,
                size: 150,
                color: Colors.black,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                height: 30,
                alignment: Alignment.center,
                child: const Row(
                  children: [
                    Text('Informe o email:'),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'email',
                    )
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                height: 30,
                alignment: Alignment.center,
                child: const Row(
                  children: [
                    Text('Informe a senha:'),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'senha',
                    )
                  ],
                ),
              ),
              Expanded(child: Container()),
              Container(
                width: double.infinity,
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                color: Colors.green,
                height: 30,
                alignment: Alignment.center,
                child: const Text('Login'),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                color: Colors.green,
                height: 30,
                alignment: Alignment.center,
                child: const Text('Cadastrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
