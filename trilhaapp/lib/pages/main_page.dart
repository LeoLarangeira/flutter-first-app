import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trilhaapp/pages/card_page.dart';
import 'package:trilhaapp/shared/widgets/custom_drawer.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController controller = PageController(initialPage: 0);
  int pagePosition = 0;
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
            Column(
              children: [
                Expanded(
                  child: PageView(
                    controller: controller,
                    onPageChanged: (value) {
                      pagePosition = value;
                    },
                    children: const [
                      CardPage(),
                    ],
                  ),
                ),
              ],
            ),
            BottomNavigationBar(
              onTap: (value) {
                controller.jumpToPage(value);
              },
              currentIndex: pagePosition,
              items: [
                BottomNavigationBarItem(label: "Pag1", icon: Icon(Icons.home)),
                BottomNavigationBarItem(label: "Pag2", icon: Icon(Icons.add)),
                BottomNavigationBarItem(label: "Pag3", icon: Icon(Icons.person))
              ],
            )
          ],
        ),
      ),
    );
  }
}
