import 'package:flutter/material.dart';

//mainaxisesallignment refer to column properties y axis
//crossallignment refer to coulumn properties axis x
//row can be change
//so we have to display the resuts that time we have only we put stateful widget tat is only solution
class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      __CurrencyConverterMaterialPageState();
}

//state can be create all changin data only below class
class __CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    setState(() {
      //rebuilt function build function only can be changed it is important function
      result = double.parse(textEditingController.text) * 81;
    });
  }
/*@override
void initState(){//right before the built function
  super.initState();
}*/

  @override
  Widget build(BuildContext context) {
//function of mobile app because we put changin data so that we put inside the function

    final border = OutlineInputBorder(
        borderSide: const BorderSide(
            color: Colors.black,
            width: 2.0,
            style: BorderStyle.solid,
            strokeAlign: BorderSide.strokeAlignOutside),
        borderRadius: BorderRadius.circular(5));

    return Scaffold(
      //flutter framework
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 0,
          centerTitle: true,
          //actions more than one [] it can be used for any exit action like that not text
          //leading it shows image
          title: const Text(
            "Currency Converter",
            style: TextStyle(color: Colors.white),
          )),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'RS ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
          style: const TextStyle(
            fontSize: 55, //default 14
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(
                10), //we have 2 other options fromLTRB and only only can be options not for fromLTRB
            child: TextField(
              controller: textEditingController,
              style: const TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                  hintText: "Please enter the amount in USD",
                  hintStyle: const TextStyle(color: Colors.black),
                  //we have suffix and prefix some feautures have
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border
                  //Icon another widget and decoration also widget
                  //label:Text("Please enter the amount in USD",style: TextStyle(color: Colors.white),)
                  //or
                  //labelText and lablecolor use//helper text can be under the line

                  ),
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              //sam for textButton
              onPressed: convert,
              /*  if(kDebugMode){//it checks it is debug mode or not because otherwise tell the warn
        print("clicked");}*/

              // build(context);//we have to rebuild the function for the changes but it change entire property
              style: TextButton.styleFrom(
                  elevation: 15,
                  backgroundColor: Colors.black54,
                  foregroundColor: Colors.white70,
                  // maximumSize: Size(double.infinity,30),

                  shape: const RoundedRectangleBorder()),
              child: const Text("Convert"),
            )),

//label can be pass anything but label text can be pass only string
      ])),
    );
  }
}

/*

class CurrencyConvererMaterialPagee extends StatelessWidget{
const CurrencyConvererMaterialPage({super.key});



  @override
  Widget build(BuildContext context) {
double result=0;
final TextEditingController textEditingController=TextEditingController();

//function of mobile app because we put changin data so that we put inside the function












final border=OutlineInputBorder(borderSide:const BorderSide(
    color: Colors.black,
    width:2.0,
    style: BorderStyle.solid,
    strokeAlign:BorderSide.strokeAlignOutside 
  ),
  borderRadius: BorderRadius.circular(5)
);

         return  Scaffold(//flutter framework
         backgroundColor: Colors.blueGrey,
         appBar:AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 0,
          centerTitle: true,
          //actions more than one [] it can be used for any exit action like that not text
          //leading it shows image 
          title:const Text("Currency Converter",
          style: TextStyle(
            color: Colors.white
          ),
          )
         ),
    body: Center(child:Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children:[
        Text(result.toString(),
        style:const  TextStyle( 
          fontSize: 55,//default 14
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 255, 255, 255),
        ),
    ),
 Padding(
   padding: const EdgeInsets.all(8.0),

     child: Padding(
       padding:const EdgeInsets.all(10),//we have 2 other options fromLTRB and only only can be options not for fromLTRB
       child: TextField(
        controller:textEditingController ,
       style: const  TextStyle(
         color:Colors.black,
       ),
       decoration: InputDecoration(
        hintText: "Please enter the amount in USD",
        hintStyle: const TextStyle(
          color: Colors.black
        ),
        //we have suffix and prefix some feautures have
        prefixIcon:const Icon(Icons.monetization_on_outlined),
        prefixIconColor: Colors.black,
        filled: true,
        fillColor: Colors.white,
        focusedBorder: border,
        enabledBorder:border
        //Icon another widget and decoration also widget
        //label:Text("Please enter the amount in USD",style: TextStyle(color: Colors.white),)
       //or
       //labelText and lablecolor use//helper text can be under the line
       
       ),
       keyboardType: const TextInputType.numberWithOptions(
        decimal: true
       ),
       
       ),
     ),
   ),
   Padding(
     padding: const EdgeInsets.all(8.0),
     child: TextButton(//sam for textButton
      onPressed: (){
      /*  if(kDebugMode){//it checks it is debug mode or not because otherwise tell the warn
        print("clicked");}*/
      result=double.parse(textEditingController.text)*81;
      build(context);//we have to rebuild the function for the changes but it change entire property
      }, 
     style:TextButton.styleFrom( 
      elevation:  15,
      backgroundColor:  Colors.black54,
      foregroundColor:  Colors.white70,
   // maximumSize: Size(double.infinity,30),
    
    shape: const RoundedRectangleBorder()
    ),
       child: const Text("Convert"),
   )),
   
   
    
 

//label can be pass anything but label text can be pass only string

      ]
    )),);}}
    //column can be take place karaila irukum not entire screen
    //ColorBox(color:Color(value).column child)
    //or color:Color.fromARGB()

    /*
      Widget build(BuildContext context) {
         return const Scaffold(//flutter framework
    body:ColoredBox(color:Color.fromRGBO( 255,0,0,1),child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children:[
        Text('0')
      ]
    )),);}}*/*/
