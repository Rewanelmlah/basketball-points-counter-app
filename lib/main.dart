import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}
class PointsCounter extends StatefulWidget {

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
 int teamApoints = 0;

 int teamBpoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.orange,
          title: Text('Points Counter'),
        ),
        body:Column(

          children: [
            SizedBox(
           height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('Team A',style: TextStyle(
                      fontSize: 32,
                    ),),
                    Text('$teamApoints',style: TextStyle(
                      fontSize: 150,
                    ),),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                       primary: Colors.orange,
                       minimumSize: Size(150, 50) ,
                      ),
                      onPressed: (){

                        setState(() {
                          teamApoints++;

                        });
                        print(teamApoints);
                      },
                      child: Text('Add 1 Point',style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),),
                    ),

                   const SizedBox(
                      height: 16, ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50) ,
                      ),
                      onPressed: (){
                        setState(() {
                          teamApoints=teamApoints + 2;

                        });
                      }, child: Text('Add 2 Point',style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),),
                    ),

                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50) ,
                      ),
                      onPressed: (){
                        setState(() {
                          teamApoints=teamApoints + 3;

                        });
                      }, child: Text('Add 3 Point',style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),),
                    ),


                  ],
                ),
               const SizedBox(
                  height: 420,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,

                  ),
                ),
                Column(
                  children: [
                    Text('Team B',style: TextStyle(
                      fontSize: 32,
                    ),),
                    Text('$teamBpoints',style: TextStyle(
                      fontSize: 150,
                    ),),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50) ,
                      ),
                      onPressed: (){
                        setState(() {
                          teamBpoints++;

                        });
                      }, child: Text('Add 1 Point',style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50) ,
                      ),
                      onPressed: (){
                        setState(() {
                          teamBpoints=teamBpoints+2;
                        });
                      }, child: Text('Add 2 Point',style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        minimumSize: Size(150, 50) ,
                      ),
                      onPressed: (){
                        setState(() {
                          teamBpoints=teamBpoints+3;
                        });
                      }, child: Text('Add 3 Point',style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),),
                    ),

                  ],
                ),
              ],
            ),
           const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                minimumSize: Size(150, 50) ,
              ),
              onPressed: (){
                setState(() {
                  teamApoints=0;
                  teamBpoints=0;
                });
              }, child: Text('Reset',style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),),
            ),
            const Spacer(),
          ],
        ),
    ),
    );
  }
}

