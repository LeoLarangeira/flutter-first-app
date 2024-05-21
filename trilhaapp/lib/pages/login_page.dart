import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trilhaapp/pages/main_page.dart';

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
                            fontWeight: FontWeight.w300,
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
                child: TextField(
                  controller: emailController,
                  // pelo amor de Deus, nunca use isso em prod!
                  onChanged: (value) {
                    debugPrint(value);
                  },
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(top: 0),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 141, 79, 151))),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 141, 79, 151))),
                      hintText: 'Email',
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Icon(Icons.person,
                          color: Color.fromARGB(255, 141, 79, 151))),
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
                child: TextField(
                    controller: passwordController,
                    obscureText: isObscureText,
                    onChanged: (value) {
                      debugPrint(value);
                    },
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(top: 0),
                      enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 141, 79, 151))),
                      focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 141, 71, 151))),
                      hintText: 'Password',
                      hintStyle: const TextStyle(color: Colors.white),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Color.fromARGB(255, 141, 79, 151),
                      ),
                      suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: const Color.fromARGB(255, 141, 79, 151),
                          )),
                    )),
              ),
              Container(
                width: double.infinity,
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: TextButton(
                  onPressed: () {
                    if (emailController.text.trim() == "email@email.com" &&
                        passwordController.text.trim() == "123") {
                      //this is how i go to another page
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MainPage()));
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text('Erro ao efetuar o Login')));
                    }
                  },
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
              Expanded(child: Container()),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                height: 30,
                alignment: Alignment.center,
                child: const Text('Esqueci minha senha',
                    style: TextStyle(
                        color: Colors.yellow, fontWeight: FontWeight.w400)),
              ),
              Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  height: 30,
                  alignment: Alignment.center,
                  child: const Text('Criar conta',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.w400)))
            ],
          ),
        ),
      ),
    );
  }
}
