import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({super.key});

  @override
  State<ContadorPage> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  int contadorGeneral = 43;
  int contador1 = 5;
  int contador2 = 7;
  int contador3 = 8;
  int contador4 = 8;
  int contador5 = 15;

  void incrementar(int numeroContador) {
    setState(() {
      contadorGeneral++;
      if (numeroContador == 1) contador1++;
      if (numeroContador == 2) contador2++;
      if (numeroContador == 3) contador3++;
      if (numeroContador == 4) contador4++;
      if (numeroContador == 5) contador5++;
    });
  }

  void resetear() {
    setState(() {
      contadorGeneral = 43;
      contador1 = 5;
      contador2 = 7;
      contador3 = 8;
      contador4 = 8;
      contador5 = 15;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(height: 50),
          Text(
            '$contadorGeneral',
            style: TextStyle(fontSize: 60, color: Colors.yellow),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    'Contador1',
                    style: TextStyle(color: Colors.yellow, fontSize: 20),
                  ),
                  Text(
                    '$contador1',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () => incrementar(1),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text('add'),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Contador2',
                    style: TextStyle(color: Colors.yellow, fontSize: 20),
                  ),
                  Text(
                    '$contador2',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () => incrementar(2),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text('add'),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    'Contador3',
                    style: TextStyle(color: Colors.yellow, fontSize: 20),
                  ),
                  Text(
                    '$contador3',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () => incrementar(3),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text('add'),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Contador4',
                    style: TextStyle(color: Colors.yellow, fontSize: 20),
                  ),
                  Text(
                    '$contador4',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () => incrementar(4),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text('add'),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 30),
          Column(
            children: [
              Text(
                'Contador5',
                style: TextStyle(color: Colors.yellow, fontSize: 20),
              ),
              Text(
                '$contador5',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () => incrementar(5),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text('add'),
              ),
            ],
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: resetear,
                backgroundColor: Colors.red,
                child: Text(
                  'RESET',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
