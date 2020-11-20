import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() =>runApp(Home());
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: Center(
              child: Wrap(
                children:<Widget> [
                  Container(
                    margin: EdgeInsets.only(top: 100,left: 25,right: 25),
                    padding: EdgeInsets.only(left: 10,top: 50),
                    width: 350,
                    height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(150),
                        topRight: Radius.circular(150),

                        bottomLeft: Radius.elliptical(1250, 500),
                        bottomRight: Radius.circular(150),),
                    ),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children:[
                         Text('LOGIN', style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),),
                         SizedBox(height: 50,),
                         Text('Email or Username',style:TextStyle(fontSize: 20,color: Colors.grey,),),
                         TextField(maxLines: 1,
                           textAlign: TextAlign.left,
                         decoration: InputDecoration(
                           suffixIcon: Icon(Icons.email)
                         ),),
                         SizedBox(height: 50,),
                       Text('Password', style: TextStyle(color: Colors.grey , fontSize: 20),),
                       TextField(
                         maxLines: 1,
                          textAlign: TextAlign.left,
                            decoration: InputDecoration(
                        suffixIcon: Icon(Icons.visibility),
                       ),
                       ),
                         SizedBox(height: 10,),
                         Padding(padding: EdgeInsets.only(left: 150),
                         child: Text('Forget Password', style: TextStyle(color: Colors.grey , fontSize: 20),),
                         ),
                         Padding(padding: EdgeInsets.only(top: 100,left: 280),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.arrow_forward,
                              size: 20.0,
                              color: Colors.black,
                            )
                          ],
                        ), ),
                       ],
                     ),
                    ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      //mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                            width: 70.0,
                            height: 70.0,
                            margin: EdgeInsets.only(left: 30,top: 50),
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage('images/twitter.png')
                                )
                            )),
                        Container(
                            width: 70.0,
                            height: 70.0,
                            margin: EdgeInsets.only(left: 70,top: 50),

                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage('images/linkedin.png')
                                )
                            )),
                        Container(
                            margin: EdgeInsets.only(left: 70,top: 50),
                            width: 70.0,
                            height: 70.0,
                            decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage('images/facebook.png')
                                )
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              ),
        ),
    );
  }
}



