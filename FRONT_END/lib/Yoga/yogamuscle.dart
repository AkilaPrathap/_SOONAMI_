import 'package:flutter/material.dart';
import 'package:sdgp_ui/Workout/captureImg.dart';


class Yogamuscle extends StatelessWidget {

  Yogamuscle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yoga Exercises'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        elevation: 0.0,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: 1200,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/back.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0,50.0, 0.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(90,10,0,0),
                    child: Row(
                      children: const [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('images/downdog.png'),
                          radius: 50.0,
                        ),
                        SizedBox(width: 50.0,),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          backgroundImage: AssetImage('images/goddess.png'),
                          radius: 50.0,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(70,10,0,0),
                    child: Row(
                      children: [
                        FlatButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => captureImage()));
                          },
                          color: Colors.grey[900],
                          child: const Text(
                            'DOWN DOG',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 2.0,
                            ),
                          ),
                        ),
                        SizedBox(width: 40.0,),
                        FlatButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => captureImage()));
                          },
                          color: Colors.grey[900],
                          child: const Text(
                            'GODDESS',
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              letterSpacing: 2.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(90,10,0,0),
                        child: Row(
                          children: const [
                            SizedBox(height: 20.0,),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage('images/mountain.png'),
                              radius: 50.0,
                            ),
                            SizedBox(width: 50.0,),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage('images/tree.png'),
                              radius: 50.0,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(70,10,0,0),
                        child: Row(
                          children: [
                            FlatButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => captureImage()));
                              },
                              color: Colors.grey[900],
                              child: const Text(
                                'MOUNTAIN',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  letterSpacing: 2.0,
                                ),
                              ),
                            ),
                            SizedBox(width: 45.0,),
                            FlatButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => captureImage()));
                              },
                              color: Colors.grey[900],
                              child: const Text(
                                'TREE',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  letterSpacing: 2.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(90,10,0,0),
                        child: Row(
                          children: const [
                            SizedBox(height: 20.0,),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage('images/warrior1.png'),
                              radius: 50.0,
                            ),
                            SizedBox(width: 50.0,),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              backgroundImage: AssetImage('images/warrrior2.png'),
                              radius: 50.0,
                            ),
                            ],
                        ),
                      ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(70,10,0,0),
                            child: Row(
                              children: [
                                const SizedBox(height: 5.0,),
                                FlatButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => captureImage()));
                                  },
                                  color: Colors.grey[900],
                                  child: const Text(
                                    'WARRIOR 1',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      letterSpacing: 2.0,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 25.0,),
                                FlatButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => captureImage()));
                                  },
                                  color: Colors.grey[900],
                                  child: const Text(
                                    'WARRIOR 2',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      letterSpacing: 2.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

