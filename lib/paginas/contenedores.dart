import 'package:flutter/material.dart';
import 'package:flutter_actividad3/colores/colores.dart';
import 'package:flutter_actividad3/paginas/Home.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";

class Contenedores extends StatefulWidget {
  const Contenedores({Key? key}) : super(key: key);
  @override
  State<Contenedores> createState() => _ContenedoresState();
}

class _ContenedoresState extends State<Contenedores> {
  int menu_activo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color1,
      bottomNavigationBar: Footer(),
      body: Body(),
    );
  }

  Widget Body() {
    return IndexedStack(
      index: menu_activo,
      children: [
        Home(),
        Center(
          child: Text(
            "Search",
            style: TextStyle(
                fontSize: 30, color: blanco, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "Favorites Song",
            style: TextStyle(
                fontSize: 30, color: blanco, fontWeight: FontWeight.bold),
          ),
        ),
        Center(
          child: Text(
            "My Profile",
            style: TextStyle(
                fontSize: 30, color: blanco, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget Footer() {
    List items = [
      FeatherIcons.home,
      FeatherIcons.search,
      FeatherIcons.heart,
      FeatherIcons.user
    ];

    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: color2,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: color3, spreadRadius: 3),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(4, (index) {
              return IconButton(
                  onPressed: () {
                    setState(() {
                      menu_activo = index;
                    });
                  },
                  icon: Icon(
                    items[index],
                    color: menu_activo == index ? blanco : color5,
                  ));
            })),
      ),
    );
  }
}
