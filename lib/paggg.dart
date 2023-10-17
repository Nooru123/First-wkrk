import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
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
                          image: NetworkImage("https://media.istockphoto.com/id/498063665/photo/rainy-landscape.jpg?s=612x612&w=0&k=20&c=2KhHJguvlQvd83c-CJeOiuEKI323gbtSIf1n2sNdXJc=")
                      )
                  ),


                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 60,left: 10,right: 5),
                      child: Icon(Icons.location_on_rounded,color: Colors.white,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60,right: 10),
                      child: Text("Tuscany",style: TextStyle(color: Colors.white,fontSize: 22),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 60,left: 220,right: 10),
                      child: Icon(CupertinoIcons.decrease_indent,color: Colors.white,),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 140,left: 10),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Icon(CupertinoIcons.sun_max,size: 30,color: Colors.white,),
                          Text("It's Sunny",style: TextStyle(
                            fontSize: 22,
                            color: Colors.white
                          ),)
                          
                        ],
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 120),
                          child:
                          ShaderMask(
                            shaderCallback: (Rect bounde){
                              return linearGradient;
                            },
                            child:Text("10°",style: TextStyle(fontSize: 100,color: Colors.white),),
                          )

                      ),
                     
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 90,left: 15),
                  child: Text("Today, Out 17 5:10",style: TextStyle(color: Colors.white),),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 530),
                  child: Container(
                    height: 260,
                    width: double.infinity,
                    color: Colors.white,
                    child:const Column(
                      children: [
                        Icon(CupertinoIcons.line_horizontal_3,),
                        Text('Weather Today',style: TextStyle(fontSize: 30),),
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 40),
                                child: Icon(CupertinoIcons.sun_max_fill,size: 50,color: Colors.yellowAccent,),
                              ),Padding(
                                padding: EdgeInsets.only(left: 40),
                                child:  Icon(CupertinoIcons.cloud_sun,size: 50,color: Colors.blueAccent,),
                              ),Padding(
                                padding: EdgeInsets.only(left: 40),
                                child:  Icon(CupertinoIcons.cloud_drizzle,size: 50,color: Colors.blue,),
                              ),Padding(
                                padding: EdgeInsets.only(left: 40),
                                child: Icon(CupertinoIcons.sun_max_fill,size: 50,color: Colors.yellowAccent,),
                              ),








                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 30,bottom: 10,top: 10),
                                child:  Text("05:00 AM")
                            ),Padding(
                                padding: EdgeInsets.only(left: 30,bottom: 10,top: 10),
                                child:  Text("06:00 AM")
                            ),Padding(
                                padding: EdgeInsets.only(left: 30,bottom: 10,top: 10),
                                child:   Text("07:00 AM")
                            ),Padding(
                                padding: EdgeInsets.only(left: 30,bottom: 10,top: 10),
                                child:  Text("08:00 AM")
                            ),








                          ],
                        ),
                        Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 35,),
                                child:  Text("10⁰",style: TextStyle(fontSize: 40),)
                            ),Padding(
                                padding: EdgeInsets.only(left: 30,),
                                child:  Text("20⁰",style: TextStyle(fontSize: 40),)
                            ),Padding(
                                padding: EdgeInsets.only(left: 38,),
                                child:   Text("20⁰",style: TextStyle(fontSize: 40),)
                            ),Padding(
                                padding: EdgeInsets.only(left: 43,),
                                child:  Text("10⁰",style: TextStyle(fontSize: 40),)
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
