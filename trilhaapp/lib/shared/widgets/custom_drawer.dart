import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trilhaapp/pages/login_page.dart';
import 'package:trilhaapp/pages/registration_page.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color.fromARGB(255, 141, 79, 151),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    builder: (BuildContext bc) {
                      return Wrap(
                        children: [
                          ListTile(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            title: Text('Camera'),
                            leading: Icon(Icons.camera),
                          ),
                          ListTile(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            title: Text('Galeria'),
                            leading: Icon(Icons.photo),
                          )
                        ],
                      );
                    });
              },
              child: const UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 141, 79, 151),
                  ),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.black26,
                    backgroundImage: NetworkImage(
                        "https://i.pinimg.com/564x/23/e2/8e/23e28e25ccca17d1205859b0c00aa726.jpg"),
                  ),
                  accountName: Text('Leozin do B1'),
                  accountEmail: Text('email@email.com')),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegistrationPage()));
                },
                child: Text(
                  'Dados Cadastrais',
                  style: GoogleFonts.roboto(color: Colors.white),
                )),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RegistrationPage()));
                },
                child: Text('Termos de Uso e Privaciadade',
                    style: GoogleFonts.roboto(color: Colors.white))),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {},
                child: Text('Configurações',
                    style: GoogleFonts.roboto(color: Colors.white))),
            const Divider(),
            const SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext bc) {
                        return AlertDialog(
                          title: Text('Meu App'),
                          content: Wrap(children: [
                            Text('Você sairá do aplicativo'),
                            Text('Deseja Realmente sair do Aplicativo?'),
                          ]),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Não')),
                            TextButton(
                                onPressed: () {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const LoginPage()));
                                },
                                child: const Text('Sim'))
                          ],
                        );
                      });
                },
                child: Text('Sair',
                    style: GoogleFonts.roboto(color: Colors.white))),
          ],
        ),
      ),
    );
  }
}
