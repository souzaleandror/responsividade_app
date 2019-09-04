import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  double maxValue(double s, double max) {
    if (s < max) {
      return s;
    } else {
      return max;
    }
  }

  Widget _getQuadrado(Color color) {
    MediaQueryData mquery = MediaQuery.of(context);
    Size size = mquery.size;

    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 200,
        minHeight: 200,
        maxHeight: 400,
        maxWidth: 400,
      ),
      child: Container(
        width: size.width,
        height: size.height,
        color: color,
        alignment: Alignment.center,
        child: Text("Largura = ${size.width} | Altura = ${size.height}"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mquery = MediaQuery.of(context);
    Size size = mquery.size;

    return Scaffold(
      appBar: AppBar(
        title: Text("Responsividade"),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth < 400) {
              return Column(
                children: <Widget>[
                  _getQuadrado(Colors.green),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 200,
                      minHeight: 200,
                      maxHeight: 400,
                      maxWidth: 400,
                    ),
                    child: Container(
                      width: size.width,
                      height: size.height,
                      color: Colors.red,
                      alignment: Alignment.center,
                      child: Text(
                          "Largura = ${size.width} | Altura = ${size.height}"),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: size.width / 2,
                    height: size.height / 2,
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text(
                        "Largura = ${size.width} | Altura = ${size.height}"),
                  ),
                ],
              );
            } else {
              return Column(
                children: <Widget>[
                  _getQuadrado(Colors.blue),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 200,
                      minHeight: 200,
                      maxHeight: 400,
                      maxWidth: 400,
                    ),
                    child: Container(
                      width: size.width,
                      height: size.height,
                      color: Colors.red,
                      alignment: Alignment.center,
                      child: Text(
                          "Largura = ${size.width} | Altura = ${size.height}"),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: size.width / 2,
                    height: size.height / 2,
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text(
                        "Largura = ${size.width} | Altura = ${size.height}"),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
