import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class page3 extends StatefulWidget {
  const page3({super.key});

  @override
  State<page3> createState() => _page2State();
}

class _page2State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    final Shader linearGradient=
        LinearGradient(colors: <Color>[Colors.white,Colors.white60],
        ).createShader(Rect.fromLTWH(00.0, 0.0, 100.0, 70.0));
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 550,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage("https://thumbs.dreamstime.com/b/cloud-rain-sun-abstract-background-concrete-wall-51140713.jpg")
                      )
                  ),


                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40,left: 10,right: 5),
                      child: Icon(Icons.location_on_rounded,color: Colors.white,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40,right: 10),
                      child: Text("Tuscany",style: TextStyle(color: Colors.white,fontSize: 22),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40,left: 220,right: 10),
                      child: Icon(CupertinoIcons.decrease_indent,color: Colors.white,),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60,left: 10),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 140),
                        child:
                            ShaderMask(
                              shaderCallback: (Rect bounde){
                                return linearGradient;
                              },
                              child:Text("18°",style: TextStyle(fontSize: 130,color: Colors.white),),
                            )

                      ),
                      RotatedBox(quarterTurns: 3,child: Text ("It's Sunny",style: TextStyle(fontSize: 22,color: Colors.white,),)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 530),
                  child: Container(
                    height: 260,
                    width: double.infinity,
                    color: Colors.white,
                    child:Column(
                      children: [
                        Icon(CupertinoIcons.line_horizontal_3,),
                        Text('Weather Today',style: TextStyle(fontSize: 30),),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Icon(CupertinoIcons.sun_max_fill,size: 50,color: Colors.yellowAccent,),
                              ),Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child:  Icon(CupertinoIcons.cloud_sun,size: 50,color: Colors.blueAccent,),
                              ),Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child:  Icon(CupertinoIcons.cloud_drizzle,size: 50,color: Colors.blue,),
                              ),Padding(
                                padding: const EdgeInsets.only(left: 40),
                                child: Icon(CupertinoIcons.sun_max_fill,size: 50,color: Colors.yellowAccent,),
                              ),








                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30,bottom: 10,top: 10),
                              child:  Text("05:00 AM")
                            ),Padding(
                              padding: const EdgeInsets.only(left: 30,bottom: 10,top: 10),
                              child:  Text("06:00 AM")
                            ),Padding(
                              padding: const EdgeInsets.only(left: 30,bottom: 10,top: 10),
                              child:   Text("07:00 AM")
                            ),Padding(
                              padding: const EdgeInsets.only(left: 30,bottom: 10,top: 10),
                              child:  Text("08:00 AM")
                            ),








                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(left: 35,),
                                child:  Text("18⁰",style: TextStyle(fontSize: 40),)
                            ),Padding(
                                padding: const EdgeInsets.only(left: 30,),
                                child:  Text("19⁰",style: TextStyle(fontSize: 40),)
                            ),Padding(
                                padding: const EdgeInsets.only(left: 38,),
                                child:   Text("9⁰",style: TextStyle(fontSize: 40),)
                            ),Padding(
                                padding: const EdgeInsets.only(left: 43,),
                                child:  Text("18⁰",style: TextStyle(fontSize: 40),)
                            ),








                          ],
                        ),

                      ],
                    ) ,
                  ),
                )


              ],
            )



          ],
        ),
      ),
    );
  }
}
