import 'package:flutter/material.dart';
import 'package:flutter_actividad3/colores/colores.dart';
import 'package:flutter_actividad3/paginas/detalle.dart';
import 'package:page_transition/page_transition.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_actividad3/json/json.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  int menuactivo = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blanco,
      appBar: barraSpotApp(),
      body: Body(),
    );
  }
    barraSpotApp() {
    return AppBar(
      backgroundColor: color2,
      elevation: 10,
      title: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            "MUSIC",
            style: TextStyle(
                fontSize: 20, color: blanco, fontWeight: FontWeight.bold),
          ),
          Icon(Icons.person)
        ]),
      ),
    );
  }

  Widget Body() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: Row(
              children: List.generate(menu.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        menuactivo = index;
                      });
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          menu[index],
                          style: TextStyle(
                              fontSize: 15,
                              color: menuactivo == index ? color6 : color2,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 3),
                        menuactivo == index
                            ? Container(
                                width: 10,
                                height: 3,
                                decoration: BoxDecoration(
                                    color: color6,
                                    borderRadius: BorderRadius.circular(50)))
                            : Container(),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
          SizedBox(
            height: 30,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30,top: 30),
                    child: Container(
                       margin: const EdgeInsets.only(left: 200),
                        height: 300,
                        width: 500,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(50.5),
                            child: Image.asset('images/paisajepri.jpg'))),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text(
                "Trending This Week",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: color6, fontSize: 22),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: List.generate(Animales.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                              alignment: Alignment.bottomCenter,
                              child: Detalle(
                                elementos: Animales[index],
                              ),
                              type: PageTransitionType.scale
                            ));
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 180,
                            height: 180,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(Animales[index]['img']),
                                    fit: BoxFit.cover),
                                color: blanco,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            Animales[index]['title'],
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text(
                "New Album",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: color6, fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                children: List.generate(Paisaje.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageTransition(
                              alignment: Alignment.bottomCenter,
                              child: Detalle(
                                elementos: Paisaje[index],
                              ),
                              type: PageTransitionType.scale
                            ));
                      },
                      child: Column(
                        children: [
                          Container(
                            width: 210,
                            height: 230,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(Paisaje[index]['img']),
                                    fit: BoxFit.cover),
                                color: blanco,
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            Paisaje[index]['title'],
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
