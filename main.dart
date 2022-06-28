// @dart=2.9

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shopee/widgets/Carrinho.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final nomelField = TextField(
      obscureText: false,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        contentPadding: EdgeInsets.fromLTRB(10.0, -10.0, 10.0, -10.0),
        hintText: "Pesquisa",
        hintStyle: TextStyle(color: Color.fromARGB(255, 235, 46, 46)),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(2.0)),
        suffixIcon: Container(
          width: 20,
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.camera_alt),
              ),
            ],
          ),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 240, 240),
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Mauricio"),
            accountEmail: Text("mauricio@gmail.com"),
            currentAccountPicture: CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2jvo13VhSfAGtdAUYVbcRco2WN9Uu8WXhQA&usqp=CAU'),
              backgroundColor: Color.fromARGB(0, 247, 74, 74),
            ),
          ),
          ListTile(
              leading: Icon(Icons.home),
              title: Text("Inicio"),
              onTap: () {
                Navigator.pop(context);
              }),
          ListTile(
              leading: Icon(Icons.search),
              title: Text("Busca"),
              onTap: () {
                debugPrint('toquei no drawer');
              }),
          ListTile(
              leading: Icon(Icons.star),
              title: Text("Favoritos"),
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                      child: Carrinho(),
                      type: PageTransitionType.rightToLeft,
                      alignment: Alignment.center,
                      duration: const Duration(milliseconds: 600),
                      reverseDuration: const Duration(milliseconds: 600)),
                );
              }),
          ListTile(
              leading: Icon(Icons.add_alert),
              title: Text("Notificações"),
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                      child: Carrinho(),
                      type: PageTransitionType.rightToLeft,
                      alignment: Alignment.center,
                      duration: const Duration(milliseconds: 600),
                      reverseDuration: const Duration(milliseconds: 600)),
                );
              }),
          ListTile(
            leading: Icon(Icons.shop_2_outlined),
            title: Text("Minhas Compras"),
            onTap: () {
              Navigator.push(
                context,
                PageTransition(
                    child: Carrinho(),
                    type: PageTransitionType.rightToLeft,
                    alignment: Alignment.center,
                    duration: const Duration(milliseconds: 600),
                    reverseDuration: const Duration(milliseconds: 600)),
              );
            },
          ),
          ListTile(
              leading: Icon(Icons.history),
              title: Text("Histórico"),
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                      child: Carrinho(),
                      type: PageTransitionType.rightToLeft,
                      alignment: Alignment.center,
                      duration: const Duration(milliseconds: 600),
                      reverseDuration: const Duration(milliseconds: 600)),
                );
              }),
          ListTile(
              leading: Icon(Icons.help_center_sharp),
              title: Text("Ajuda"),
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                      child: Carrinho(),
                      type: PageTransitionType.rightToLeft,
                      alignment: Alignment.center,
                      duration: const Duration(milliseconds: 600),
                      reverseDuration: const Duration(milliseconds: 600)),
                );
              }),
        ],
      )),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 253, 192, 167),
        title: Center(child: Text('Shopping')),
      ),
      body: Stack(
        children: [
//=====================campo de pesquisa shopee==========================
          Container(
            transform: Matrix4.identity()..translate(-40.0, -350.0),
            color: Color.fromARGB(255, 240, 240, 240),
            child: Padding(
              padding: const EdgeInsets.all(60.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  nomelField,
                  SizedBox(height: 18.0),
                ],
              ),
            ),
          ),
          ////=================================Iconcarrinho================================
          Container(
            transform: Matrix4.identity()..translate(130.0, 18.0),
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                      child: Carrinho(),
                      type: PageTransitionType.rightToLeft,
                      alignment: Alignment.center,
                      duration: const Duration(milliseconds: 600),
                      reverseDuration: const Duration(milliseconds: 600)),
                );
              },
              child: Column(children: <Widget>[
                Image.asset(
                  "assets/images/carrinho.png",
                  height: 30,
                  alignment: Alignment.topCenter,
                ),
              ]),
            ),
          ),
          //=================================container cor==============================
          Container(
            transform: Matrix4.identity()..translate(-0.0, 154.0),
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height / 8.2,
            width: MediaQuery.of(context).size.height / 1,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 253, 192, 167),
              borderRadius: BorderRadius.circular(1),
            ),
          ),
          ////=================================Iconmensagem================================
          Container(
            transform: Matrix4.identity()..translate(180.0, 18.0),
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                      child: Carrinho(),
                      type: PageTransitionType.rightToLeft,
                      alignment: Alignment.center,
                      duration: const Duration(milliseconds: 600),
                      reverseDuration: const Duration(milliseconds: 600)),
                );
              },
              child: Column(children: <Widget>[
                Image.asset(
                  "assets/images/mensagem.png",
                  height: 30,
                  alignment: Alignment.topCenter,
                ),
              ]),
            ),
          ),

          ////=================================Iconmoeda================================
          Container(
            transform: Matrix4.identity()..translate(-140.0, 150.0),
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                      child: Carrinho(),
                      type: PageTransitionType.size,
                      alignment: Alignment.center,
                      duration: const Duration(milliseconds: 600),
                      reverseDuration: const Duration(milliseconds: 600)),
                );
              },
              child: Column(children: <Widget>[
                Image.asset(
                  "assets/images/moedas.png",
                  height: 90,
                  alignment: Alignment.topCenter,
                ),
              ]),
            ),
          ),

          ////=================================Iconfrete================================
          Container(
            transform: Matrix4.identity()..translate(-50.0, 158.0),
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                      child: Carrinho(),
                      type: PageTransitionType.size,
                      alignment: Alignment.center,
                      duration: const Duration(milliseconds: 600),
                      reverseDuration: const Duration(milliseconds: 600)),
                );
              },
              child: Column(children: <Widget>[
                Image.asset(
                  "assets/images/frete.png",
                  height: 100,
                  alignment: Alignment.topCenter,
                ),
              ]),
            ),
          ),

          ////=================================Iconjogos================================
          Container(
            transform: Matrix4.identity()..translate(55.0, 148.0),
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                      child: Carrinho(),
                      type: PageTransitionType.size,
                      alignment: Alignment.center,
                      duration: const Duration(milliseconds: 600),
                      reverseDuration: const Duration(milliseconds: 600)),
                );
              },
              child: Column(children: <Widget>[
                Image.asset(
                  "assets/images/jogos.png",
                  height: 100,
                  alignment: Alignment.topCenter,
                ),
              ]),
            ),
          ),

          ////=================================Iconcupom================================
          Container(
            transform: Matrix4.identity()..translate(155.0, 162.0),
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                      child: Carrinho(),
                      type: PageTransitionType.size,
                      alignment: Alignment.center,
                      duration: const Duration(milliseconds: 600),
                      reverseDuration: const Duration(milliseconds: 600)),
                );
              },
              child: Column(children: <Widget>[
                Image.asset(
                  "assets/images/cupons.png",
                  height: 100,
                  alignment: Alignment.topCenter,
                ),
              ]),
            ),
          ),

//==============================Slide ofertas===================================================

          Container(
            transform: Matrix4.identity()..translate(-8.0, 50.0),
            child: CarouselSlider(
              items: [
                //1st Image of Slider
                Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://canaldeofertasepromocoes.com.br/wp-content/uploads/2017/04/canaldeofertasepromocoes_logo_home.png"),
                        fit: BoxFit.contain),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://delivery.supermuffato.com.br/arquivos/smd_hotsite_ofertas_ofertas_logo_rosa.png?v=637097833737070000"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //3rd Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://ofertao.top/wp-content/uploads/2021/08/Ofertao.top_.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                //4th Image of Slider
                Container(
                  margin: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://images.yampi.me/assets/stores/topofertasbrasil/uploads/logo/60c3af6560d26.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],

              //Slider Container properties
              options: CarouselOptions(
                height: 110.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
          ),
//=======================ofertas relampagos=========================================
          Container(
            transform: Matrix4.identity()..translate(-0.0, 275.0),
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height / 6.5,
            width: MediaQuery.of(context).size.height / 1,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(1),
            ),
          ),
          Container(
            transform: Matrix4.identity()..translate(-120.0, 265.0),
            alignment: Alignment.center,
            child: Column(children: <Widget>[
              Image.asset(
                "assets/images/relampago.png",
                height: 50,
                alignment: Alignment.topCenter,
              ),
            ]),
          ),
          //=============================destaque pra voce=============================
          Container(
            transform: Matrix4.identity()..translate(-0.0, 425.0),
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height / 6.5,
            width: MediaQuery.of(context).size.height / 1,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(1),
            ),
          ),
          Container(
            transform: Matrix4.identity()..translate(-108.0, 423.0),
            alignment: Alignment.center,
            child: Column(children: <Widget>[
              Image.asset(
                "assets/images/destaque.png",
                height: 40,
                alignment: Alignment.topCenter,
              ),
            ]),
          ),
          //=============================categorias=============================
          Container(
            transform: Matrix4.identity()..translate(-0.0, 576.0),
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height / 3.5,
            width: MediaQuery.of(context).size.height / 1,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(1),
            ),
          ),
          Container(
            transform: Matrix4.identity()..translate(-144.0, 565.0),
            alignment: Alignment.center,
            child: Column(children: <Widget>[
              Image.asset(
                "assets/images/categoria.png",
                height: 55,
                alignment: Alignment.topCenter,
              ),
            ]),
          ),
          Container(
            transform: Matrix4.identity()..translate(150.0, 573.0),
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                      child: Carrinho(),
                      type: PageTransitionType.size,
                      alignment: Alignment.center,
                      duration: const Duration(milliseconds: 600),
                      reverseDuration: const Duration(milliseconds: 600)),
                );
              },
              child: Column(children: <Widget>[
                Image.asset(
                  "assets/images/vermais.png",
                  height: 50,
                  alignment: Alignment.topCenter,
                ),
              ]),
            ),
          ),

          ///=============================imagens categorias=================
          Container(
            transform: Matrix4.identity()..translate(-160.0, 610.0),
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                      child: Carrinho(),
                      type: PageTransitionType.size,
                      alignment: Alignment.center,
                      duration: const Duration(milliseconds: 600),
                      reverseDuration: const Duration(milliseconds: 600)),
                );
              },
              child: Column(children: <Widget>[
                Image.asset(
                  "assets/images/audio.jpeg",
                  height: 85,
                  alignment: Alignment.topCenter,
                ),
              ]),
            ),
          ),
          Container(
            transform: Matrix4.identity()..translate(-80.0, 610.0),
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                      child: Carrinho(),
                      type: PageTransitionType.size,
                      alignment: Alignment.center,
                      duration: const Duration(milliseconds: 600),
                      reverseDuration: const Duration(milliseconds: 600)),
                );
              },
              child: Column(children: <Widget>[
                Image.asset(
                  "assets/images/celulares.jpeg",
                  height: 85,
                  alignment: Alignment.topCenter,
                ),
              ]),
            ),
          ),
          Container(
            transform: Matrix4.identity()..translate(5.0, 610.0),
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                      child: Carrinho(),
                      type: PageTransitionType.size,
                      alignment: Alignment.center,
                      duration: const Duration(milliseconds: 600),
                      reverseDuration: const Duration(milliseconds: 600)),
                );
              },
              child: Column(children: <Widget>[
                Image.asset(
                  "assets/images/drones.jpeg",
                  height: 85,
                  alignment: Alignment.topCenter,
                ),
              ]),
            ),
          ),
          Container(
            transform: Matrix4.identity()..translate(85.0, 610.0),
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                      child: Carrinho(),
                      type: PageTransitionType.size,
                      alignment: Alignment.center,
                      duration: const Duration(milliseconds: 600),
                      reverseDuration: const Duration(milliseconds: 600)),
                );
              },
              child: Column(children: <Widget>[
                Image.asset(
                  "assets/images/jogos.jpeg",
                  height: 85,
                  alignment: Alignment.topCenter,
                ),
              ]),
            ),
          ),
          Container(
            transform: Matrix4.identity()..translate(165.0, 610.0),
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                      child: Carrinho(),
                      type: PageTransitionType.size,
                      alignment: Alignment.center,
                      duration: const Duration(milliseconds: 600),
                      reverseDuration: const Duration(milliseconds: 600)),
                );
              },
              child: Column(children: <Widget>[
                Image.asset(
                  "assets/images/pc.jpeg",
                  height: 85,
                  alignment: Alignment.topCenter,
                ),
              ]),
            ),
          ),
          Container(
            transform: Matrix4.identity()..translate(-155.0, 690.0),
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                      child: Carrinho(),
                      type: PageTransitionType.size,
                      alignment: Alignment.center,
                      duration: const Duration(milliseconds: 600),
                      reverseDuration: const Duration(milliseconds: 600)),
                );
              },
              child: Column(children: <Widget>[
                Image.asset(
                  "assets/images/relogios.jpeg",
                  height: 85,
                  alignment: Alignment.topCenter,
                ),
              ]),
            ),
          ),
          Container(
            transform: Matrix4.identity()..translate(-75.0, 690.0),
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                      child: Carrinho(),
                      type: PageTransitionType.size,
                      alignment: Alignment.center,
                      duration: const Duration(milliseconds: 600),
                      reverseDuration: const Duration(milliseconds: 600)),
                );
              },
              child: Column(children: <Widget>[
                Image.asset(
                  "assets/images/esporte.jpeg",
                  height: 85,
                  alignment: Alignment.topCenter,
                ),
              ]),
            ),
          ),
          Container(
            transform: Matrix4.identity()..translate(5.0, 690.0),
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                      child: Carrinho(),
                      type: PageTransitionType.size,
                      alignment: Alignment.center,
                      duration: const Duration(milliseconds: 600),
                      reverseDuration: const Duration(milliseconds: 600)),
                );
              },
              child: Column(children: <Widget>[
                Image.asset(
                  "assets/images/bolsas.jpeg",
                  height: 85,
                  alignment: Alignment.topCenter,
                ),
              ]),
            ),
          ),
          Container(
            transform: Matrix4.identity()..translate(85.0, 690.0),
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                      child: Carrinho(),
                      type: PageTransitionType.size,
                      alignment: Alignment.center,
                      duration: const Duration(milliseconds: 600),
                      reverseDuration: const Duration(milliseconds: 600)),
                );
              },
              child: Column(children: <Widget>[
                Image.asset(
                  "assets/images/moda.jpeg",
                  height: 85,
                  alignment: Alignment.topCenter,
                ),
              ]),
            ),
          ),
          Container(
            transform: Matrix4.identity()..translate(165.0, 690.0),
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageTransition(
                      child: Carrinho(),
                      type: PageTransitionType.size,
                      alignment: Alignment.center,
                      duration: const Duration(milliseconds: 600),
                      reverseDuration: const Duration(milliseconds: 600)),
                );
              },
              child: Column(children: <Widget>[
                Image.asset(
                  "assets/images/brinquedos.jpeg",
                  height: 85,
                  alignment: Alignment.topCenter,
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
