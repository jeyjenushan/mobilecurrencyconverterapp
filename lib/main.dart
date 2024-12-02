
import 'package:currency_coverter/currency_converer_material_page.dart';
import 'package:currency_coverter/currency_converter_cupertion_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';//absolute importing




void main(){


runApp(const MyCurpertinoAPP());


}
 //key can be help full for identify different widgets
 //eg we assign key myapp it help full for identify the particular myapp
 //key can helpfull update the widget tree
 //or
 //const MyApp({key? key}):super(key)
  //this function can be defined in the stateless widget so that override

//design
//1:Material Design->google
//2:cupertino design->apple

//matrial app can be help full all of the step for us
//1:material design
//2:navigation
//3:localisation
//4:theming
//5internationalisation
class MyApp extends StatelessWidget {

 const MyApp({super.key});

 
//@override
 /* Widget build(BuildContext context) {
    return const Text(
        "Hello world",
        textDirection: TextDirection.ltr);
  
   
  }  */ 
  @override
Widget build(BuildContext context){
    //material app can be used for navigating one page to another page
   return const MaterialApp(
home:CurrencyConverterMaterialPage(),//Scaffold can be design the things
   );

}



}

class MyCurpertinoAPP extends StatelessWidget {
  const MyCurpertinoAPP({super.key});

@override
Widget build(BuildContext context){
   return const CupertinoApp(
home:CurrencyConverterCurpertinoPage(),//Scaffold can be design the things
   );
}}
