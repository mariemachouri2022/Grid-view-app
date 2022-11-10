import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView',
      home: Scaffold(
        appBar: AppBar(
          title: Text('GridView'),
        ),
        backgroundColor: Colors.indigo[100],
        body: Home(),
      ),
    );
  }
}
class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final sizeX = MediaQuery.of(context).size.width;
    final sizeY = MediaQuery.of(context).size.height;
    return Container(
      width: sizeX,
      height: sizeY,
      child: GridView.count(
        scrollDirection: Axis.vertical,
        crossAxisCount: 3,
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        padding: const EdgeInsets.all(5.0),        
        children: createSquares(20),
      ),
    );
  }
  List<Widget> createSquares(int numSquares) {
    int i = 0;
    List colors = [
      Colors.amber,
      Colors.deepPurple,
      Colors.deepOrange,
      Colors.indigo,
      Colors.lightBlue
    ];
    List<Widget> squares = [];
    while (i < numSquares) {
      Container square = Container(
          color: colors[i % 5],
          height: 60.0,
          width: 60.0,
          child: Text(i.toString()));
      i++;
      squares.add(square);
    }
    return squares;
  }
}