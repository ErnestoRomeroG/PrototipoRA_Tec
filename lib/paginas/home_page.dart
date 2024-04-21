import 'package:flutter/material.dart';
import 'package:prototipo_ra_tec/tab/atrac_tab.dart';
import 'package:prototipo_ra_tec/tab/indus_tab.dart';
import 'package:prototipo_ra_tec/tab/it_tab.dart';
import 'package:prototipo_ra_tec/tab/meca_tab.dart';
import 'package:prototipo_ra_tec/util/my_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = const [
    MyTab(
      iconPath: "lib/Iconos/IT.png",
    ),
    MyTab(
      iconPath: "lib/Iconos/industrial.png",
    ),
    MyTab(
      iconPath: "lib/Iconos/mecatronica.png",
    ),
    MyTab(
      iconPath: "lib/Iconos/lugares.png",
    ),
    // Aquí puedes agregar más pestañas si lo necesitas
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.grey[800],
                size: 36,
              ),
              onPressed: () {},
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: Image.asset(
                "lib/Iconos/gorila.png",
                width: 36,
                height: 36,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 36.0, vertical: 18.0),
              child: Row(
                children: [
                  Text(
                    "Instituto Tecnologico de Matamoros",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "  ITM",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            TabBar(tabs: myTabs),
            Expanded(
                child: TabBarView(
              children: [ITtab(), Industab(), Mecatab(), Atractab()],
            ))
          ],
        ),
      ),
    );
  }
}
