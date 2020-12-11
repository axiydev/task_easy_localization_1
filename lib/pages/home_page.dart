import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
class HomePage extends StatefulWidget{
  static final String id='home_page';
  @override
  _HomePageState createState()=>_HomePageState();
}
class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Colors.amberAccent,
      appBar:AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        bottomOpacity: 0.0,
        title:Text('easy localization',style:GoogleFonts.comfortaa(
          fontSize:30,
        )),
        centerTitle:true,
      ),
      body:Container(
        padding:EdgeInsets.all(10),
       child:Column(
         mainAxisAlignment:MainAxisAlignment.end,
         children:[
          Expanded(
            child:Container(
              padding:EdgeInsets.all(10),
              decoration:BoxDecoration(
                color:Colors.deepOrange[400],
                borderRadius:BorderRadius.circular(20),
                boxShadow:[
                  BoxShadow(color:Colors.grey,blurRadius: 10,offset:Offset(0,10)),
                ],
              ),
              child:Center(
                child:Text('welcome',style:GoogleFonts.comfortaa(
                  fontSize: 25,
                  color:Colors.white,
                ),
                  textAlign: TextAlign.center,
                ).tr(),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height:100,
            child:Row(
                //#buttons
                children: [
                  _btnL(col: Colors.greenAccent[400],st:'EN',l:Locale('en','US')),
                  Spacer(flex:1),
                  _btnL(col: Colors.redAccent[400],st:'RU',l:Locale('ru','RU')),
                  Spacer(flex:1),
                  _btnL(col: Colors.lightBlueAccent[700],st:'UZ',l:Locale('uz','UZ')),
                  Spacer(flex:1),
                  _btnL(col: Colors.yellowAccent[700],st:'FR',l:Locale('fr','FR')),
                ],
           ),
          ),
         ],
       ),
      ),
    );
  }
  //#button widget
  Widget _btnL({Color col=Colors.red,String st='OK',Locale l}){
    return Expanded(
      flex: 10,
      child:GestureDetector(
        onTap:(){
          context.locale=l;
        },
        child:AnimatedContainer(
          duration:Duration(milliseconds: 200),
          curve: Curves.easeIn,
          height:90,
          decoration:BoxDecoration(
            shape:BoxShape.circle,
            boxShadow:[
              BoxShadow(color:Colors.grey,blurRadius: 10,offset:Offset(0,10)),
            ],
            color:col,
          ),
          child:Center(
            child:Text(st,style:GoogleFonts.roboto(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color:Colors.white,
            )),
          ),
        ),
      ),
    );
  }
}
