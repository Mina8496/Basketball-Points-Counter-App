import 'package:flutter/material.dart';

void main() {
  runApp(pointContiner());
}

class pointContiner extends StatefulWidget {
  pointContiner({super.key});

  @override
  State<pointContiner> createState() => _pointContinerState();
}

class _pointContinerState extends State<pointContiner> {
  int TeamAPoint = 0;

  int TeamBPoint = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text("point Continer"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 500,
                  child: Column(
                    children: [
                      Text(
                        "Team A",
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        "$TeamAPoint",
                        style: TextStyle(
                          fontSize: 150),
                      ),
                      // add 1 point
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50)
                          ),
                        onPressed: () {
                          setState(() {
                            TeamAPoint++;
                          });
                        },
                        child: const Text(
                          "Add 1 Point",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black),
                        ),
                      ),
                     // add 2 point
                     const SizedBox(height: 30,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50)
                          ),
                        onPressed: () {
                          setState(() {
                            TeamAPoint +=2;
                          });
                        },
                        child: const Text(
                          "Add 2 Point",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black),
                        ),
                      ),
                      // add 3 point
                      SizedBox(height: 30,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50)
                          ),
                        onPressed: () {
                          setState(() {
                            TeamAPoint +=3;
                          });
                        },
                        child: const Text(
                          "Add 3 Point",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              // column B
              SizedBox(
                width: 50,
                height: 500,
                child: VerticalDivider(
                  color: Colors.grey,
                  thickness: 1.5,
                ),
              ),
              SizedBox(
                height: 500,
                child: Column(
                    children: [
                      Text(
                        "Team B",
                        style: TextStyle(fontSize: 32),
                      ),
                      Text(
                        "$TeamBPoint",
                        style: TextStyle(fontSize: 150),
                      ),
                      // add 1 point
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50)
                          ),
                        onPressed: () {
                          setState(() {
                            TeamBPoint++;
                          });
                        },
                        child: const Text(
                          "Add 1 Point",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black),
                        ),
                      ),
                     // add 2 point
                     const SizedBox(height: 30,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50)
                          ),
                        onPressed: () {
                          setState(() {
                            TeamBPoint +=2;
                          });
                        },
                        child: const Text(
                          "Add 2 Point",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black),
                        ),
                      ),
                      // add 3 point
                      SizedBox(height: 30,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: Size(150, 50)
                          ),
                        onPressed: () {
                          setState(() {
                            TeamBPoint +=3;
                          });
                        },
                        child: const Text(
                          "Add 3 Point",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black),
                        ),
                      ),
                    ],
                  ),
              )
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                fixedSize: Size(150, 50),
              ),
              onPressed: () {
                setState(() {
                  TeamAPoint =0;
                  TeamBPoint =0;
                });
              },
             child: Text("Result",
             style: TextStyle(
              fontSize: 18,
              color: Colors.black,
             ),
             ),)
          ],
        ),
      ),
    );
  }
}
