import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController(text: "");
    var passwordController = TextEditingController(text: "");
    bool isObscureText = true;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 90,
              ),
              Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQME778_qPWJI4fLYt8DLY-221QrzuV8KPmLUKMKawIZQ&s'),
              Container(
                  height: 60,
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text('Já tem Cadastro?',
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontSize: 25,
                          )),
                      Text('Faça seu login e make the change_',
                          style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontWeight: FontWeight.w300, // light
                            fontStyle: FontStyle.italic,
                          )),
                    ],
                  )),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.white, width: 1))),
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                height: 30,
                alignment: Alignment.center,
                child: Row(
                  children: [
                    const Icon(
                      Icons.email_outlined,
                      color: Colors.purple,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: TextField(
                            controller: emailController,
                            onChanged: (value) {
                              debugPrint(value);
                            },
                            decoration: const InputDecoration(
                              hintText: 'E-mail',
                              hintStyle: TextStyle(color: Colors.white),
                              fillColor: Colors.black,
                              filled: true,
                              border: InputBorder.none,
                            )))
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(color: Colors.white, width: 1))),
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                height: 30,
                alignment: Alignment.center,
                child: Row(
                  children: [
                    const Icon(
                      Icons.lock,
                      color: Colors.purple,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: TextField(
                      controller: passwordController,
                      obscureText: isObscureText,
                      decoration: const InputDecoration(
                        hintText: 'Senha',
                        hintStyle: TextStyle(color: Colors.white),
                        fillColor: Colors.black,
                        filled: true,
                        border: InputBorder.none,
                      ),
                    )),
                    const Icon(
                      Icons.remove_red_eye_outlined,
                      color: Colors.purple,
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.purple),
                  ),
                  child: Text('Entrar',
                      style: GoogleFonts.roboto(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 24,
                      )),
                ),
              ),
              const SizedBox(
                height: 70,
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
