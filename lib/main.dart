import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple
      ),
      home: const MyHomePage(title: 'Aplicacion de Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int contador = 10;

  void sumar() {
    setState(() {
      contador = contador + 2;
    });
  }

  void restar() {
    setState(() {
      contador = contador - 2;
    });
  }

  void multiplicar() {
    setState(() {
      contador = contador * 2;
    });
  }

  void dividir() {
    setState(() {
      contador = contador ~/ 2;
    });
  }

  @override
  Widget build(BuildContext context) {
    const fontSizeT = TextStyle(fontSize: 30);
    const fontSizeB = TextStyle(fontSize: 20);
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Resultado:',
                style: fontSizeT,
              ),
              Text('$contador',
                  style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(
                height: 300,
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          padding: const EdgeInsets.all(3.0),
          margin: const EdgeInsets.only(bottom: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                width: 200,
                height: 60,
                child: FloatingActionButton.extended(
                  backgroundColor: Colors.purple[600],
                  onPressed: sumar,
                  label: Text("Sumar", style: fontSizeB),
                  icon: Icon(Icons.exposure_plus_2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 200,
                height: 60,
                child: FloatingActionButton.extended(
                  backgroundColor: Colors.purple[600],
                  onPressed: restar,
                  label: Text("Restar", style: fontSizeB),
                  icon: Icon(Icons.exposure_minus_2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 200,
                height: 60,
                child: FloatingActionButton.extended(
                  backgroundColor: Colors.purple[600],
                  onPressed: multiplicar,
                  label: Text("Multiplicar", style: fontSizeB),
                  icon: Icon(Icons.calculate_outlined),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                width: 200,
                height: 60,
                child: FloatingActionButton.extended(
                  backgroundColor: Colors.purple[600],
                  onPressed: dividir,
                  label: Text("Dividir", style: fontSizeB),
                  icon: Icon(Icons.calculate_outlined),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
