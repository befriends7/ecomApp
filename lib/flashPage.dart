

import 'package:ecom/homeModel.dart';
import 'package:ecom/setUpLocator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class flashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
        return ScopedModel<homeModel>(model: locator<homeModel>(),

            child: ScopedModelDescendant<homeModel>(

              builder: (contxt,child,model)=>MaterialApp(

                home: Scaffold(

                  body: Container(

                    width: double.infinity,
                    height: double.infinity,

                    child: Center(

                      child: Column(

                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [

                          Container(

                              width: 230,
                              height: 230,
                              child: Image.asset('assets/fireb.png')),


                          SizedBox(height: 60,),

                          Container(
                            
                            
                            width: double.infinity,
                            height: 50,

                            padding: EdgeInsets.only(left: 30,right: 30),

                            child: RaisedButton(onPressed: (){

                            },

                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                              child: Text('Google',style: TextStyle(color: Colors.white,fontSize: 20),),

                              color: Colors.blue,

                            ),
                          ),

                          SizedBox(

                            height: 20,

                          ),


                          Container(

                            width: double.infinity,
                            height: 50,
                            padding: EdgeInsets.only(left: 30,right:30),

                            child: RaisedButton(

                              color: Color(0xFF16c79a),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

                              onPressed: (){

                              },

                              child: Text('Phone',style: TextStyle(fontSize: 20,color: Colors.white)),

                            ),


                          )

                        ],

                      ),


                    ),


                  ),

                ),

              ),

            ));
  }
}