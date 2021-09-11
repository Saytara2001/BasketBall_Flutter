import 'package:flutter/material.dart';

void main() {
  runApp(Task1());
}

class Task1 extends StatefulWidget {
  @override
  _Task1State createState() => _Task1State();
}

class _Task1State extends State<Task1> {
  int teamA=0;
  int teamB=0;
  addPoint(bool choosedTeam,int value){
    setState(() {
      if(choosedTeam)
      {
        teamA=teamA+value;
      }
      else
      {
        teamB=teamB+value;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text(
            'Points Counter',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.orange,),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 55),
                        child: Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 45,
                            wordSpacing: 5,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50),
                        child: Text(
                          teamA.toString(),
                          style: TextStyle(
                            fontSize: 150,
                          ),
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {
                           setState(() {
                             addPoint(true,1);
                           });
                        },
                        child: Text(
                          'Add 1 point',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        color: Colors.orange,
                      ),
                      RaisedButton(
                          onPressed: () {
                            setState(() {
                              addPoint(true,2);
                              print('hello');
                            });
                          },
                          child: Text(
                            'Add 2 point',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                          color: Colors.orange),
                      RaisedButton(
                          onPressed: () {
                            setState(() {
                              addPoint(true,3);
                            });
                          },
                          child: Text(
                            'Add 3 point',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                          color: Colors.orange),
                    ],
                  ),
                  Container(
                    height: 520,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1.5,
                      indent: 20,
                      endIndent: 20,
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 55),
                        child: Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 45,
                            wordSpacing: 5,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 55),
                        child: Text(
                          teamB.toString(),
                          style: TextStyle(
                            fontSize: 150,
                          ),
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {
                          setState(() {
                            addPoint(false,1);
                          });
                        },
                        child: Text(
                          'Add 1 point',
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        color: Colors.orange,
                      ),
                      RaisedButton(
                          onPressed: () {
                            setState(() {
                              addPoint(false,2);
                            });
                          },
                          child: Text(
                            'Add 2 point',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                          color: Colors.orange),
                      RaisedButton(
                          onPressed: () {
                            setState(() {
                              addPoint(false,3);
                            });
                          },
                          child: Text(
                            'Add 3 point',
                            style: TextStyle(
                              fontSize: 25,
                            ),
                          ),
                          color: Colors.orange),
                    ],
                  ),
                ],
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    teamA=0;
                    teamB=0;
                  });
                },
                child: Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                color: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*
Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child:
 */
