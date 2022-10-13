import 'package:flutter_actividad3/json/json.dart';
import 'package:flutter/material.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import 'package:flutter_actividad3/colores/colores.dart';

class Detalle extends StatefulWidget {
  const Detalle({Key? key, this.elementos}) : super(key: key);
  final dynamic elementos;
  @override
  State<Detalle> createState() => _DetalleState();
}

class _DetalleState extends State<Detalle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blanco,
      appBar: Barra(),
      body: Body(),
    );
  }

  Barra() {
    return AppBar(
      backgroundColor: color3,
      elevation: 10,
      title: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Reproductor",
                style: TextStyle(
                    fontSize: 20, color: blanco, fontWeight: FontWeight.bold)),
            Icon(FeatherIcons.heart)
          ],
        ),
      ),
    );
  }

  Widget Body() {
    var size = MediaQuery.of(context).size;
    //List listdetalle = widget.elementos['img'];
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Container(
                      width: size.width,
                      height: 350,
                      decoration: BoxDecoration(
                          border: Border.all(color: color3),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage(widget.elementos['img']),
                              fit: BoxFit.cover))),
                )
              ]),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Text(widget.elementos['title'],
                
                    style: TextStyle(
                        fontSize: 20,
                        color: color1,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Text(widget.elementos['description'],
                    style: TextStyle(
                        fontSize: 25,
                        color: color1,
                        fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 60, right: 60),
                  child: Row(
                    children: [
                      Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('images/before.png'),
                                  fit: BoxFit.cover))),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('images/play.png'),
                                  fit: BoxFit.cover))),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('images/next.png'),
                                  fit: BoxFit.cover)))
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
                        fontWeight: FontWeight.bold,
                        color: color2,
                        fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 25),
                  child: Row(
                    children: List.generate(Paisaje.length, (index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              Container(
                                width: 210,
                                height: 230,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage(Animales[index]['img']),
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
        ],
      ),
    );
  }
}
