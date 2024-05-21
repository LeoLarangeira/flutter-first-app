import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trilhaapp/pages/registration_page.dart';
import 'package:trilhaapp/shared/widgets/custom_drawer.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Home Page',
            style: GoogleFonts.roboto(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        drawer: CustomDrawer(),
        body: PageView(
          children: [
            Container(
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
