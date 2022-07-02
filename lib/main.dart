import 'dart:math';
import 'package:flutter/material.dart';
void main() => runApp(const Home());
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Main(),
    );
  }
}
class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}
class _MainState extends State<Main> {
  late bool change ;
  late Color colour,colour1;
  final Random rand = Random();
  @override
  void initState() {
    change = false;
    colour = Color.fromARGB(
        rand.nextInt(250),
        rand.nextInt(240),
        rand.nextInt(230),
        rand.nextInt(220)
    );
    colour1=Color.fromARGB(
        rand.nextInt(256),
        rand.nextInt(256),
        rand.nextInt(256),
        rand.nextInt(256)
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Center(child: Text("Articuno", style:TextStyle( color: Colors.white))),
        backgroundColor: Colors.black,
      ),
      body:  ListView(
        children: <Widget>[
          Column(
            children: [
              change==true ? Row(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: colour,
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    color: colour1,
                  ),
                ],
              ):

              Row(
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    color: colour1,
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    color: colour,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          child: const Icon(Icons.add_to_home_screen_outlined),
          onPressed: () {
            setState(() {
              change = !change;
            });
          }
      ),
    );
  }
}