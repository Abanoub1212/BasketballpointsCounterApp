import 'package:flutter/material.dart';
class BasketballpointsCounter extends StatefulWidget {
  @override
  State<BasketballpointsCounter> createState() => _BasketballpointsCounterState();
}

class _BasketballpointsCounterState extends State<BasketballpointsCounter> {
  int teamAPoints=0;
  int teamBPoints=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Points Counter"),
            backgroundColor: Colors.orange,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text("Team A",
                          style:TextStyle(
                            fontSize: 32,
                          )),
                      Text("$teamAPoints",
                          style:const TextStyle(
                            fontSize: 150,
                          )),
                      ElevatedButton(
                        onPressed: (){
                          setState(() {
                            teamAPoints++;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          primary: Colors.orange,
                          minimumSize: const Size(150,50),
                        ),
                        child:
                        const Text("Add 1 Point",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: ElevatedButton(
                          onPressed: (){
                            setState(() {
                              teamAPoints+=2;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(10),
                            primary: Colors.orange,
                            minimumSize: const Size(150,50),
                          ),
                          child:
                          const Text("Add 2 Point",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: (){
                          setState(() {
                            teamAPoints+=3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          primary: Colors.orange,
                          minimumSize: const Size(150,50),
                        ),
                        child:
                        const Text("Add 3 Point",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 440,
                    child: const VerticalDivider(
                      thickness: 1,
                      color: Colors.grey,
                      indent:0,
                    ),
                  ),
                  Column(
                    children: [
                      const Text("Team B",
                          style:TextStyle(
                            fontSize: 32,
                          )),
                      Text("$teamBPoints",
                          style:const TextStyle(
                            fontSize: 150,
                          )),
                      ElevatedButton(
                        onPressed: (){
                          setState(() {
                            teamBPoints++;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          primary: Colors.orange,
                          minimumSize: const Size(150,50),
                        ),
                        child:
                        const Text("Add 1 Point",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: ElevatedButton(
                          onPressed: (){
                            setState(() {
                              teamBPoints+=2;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(10),
                            primary: Colors.orange,
                            minimumSize: const Size(150,50),
                          ),
                          child:
                          const Text("Add 2 Point",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: (){
                          setState(() {
                            teamBPoints+=3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          primary: Colors.orange,
                          minimumSize: const Size(150,50),
                        ),
                        child:
                        const Text("Add 3 Point",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    teamAPoints=0;
                    teamBPoints=0;
                  });
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(10),
                  primary: Colors.orange,
                  minimumSize: const Size(150,50),
                ),
                child:
                const Text("Reset",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
