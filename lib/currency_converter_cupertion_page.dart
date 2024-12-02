import 'package:flutter/cupertino.dart';


class CurrencyConverterCurpertinoPage extends StatefulWidget {
  const CurrencyConverterCurpertinoPage({super.key});

  @override
  State<CurrencyConverterCurpertinoPage> createState() => _CurrencyConverterCurpertinoPageState();
}

class _CurrencyConverterCurpertinoPageState extends State<CurrencyConverterCurpertinoPage> {
 
   double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    setState(() {
      //rebuilt function build function only can be changed it is important function
      result = double.parse(textEditingController.text) * 81;
    });
  }
  /*
  removing certain trees in widget tree so that use*/
  //after the build function
@override
void dispose(){
textEditingController.dispose();
super.dispose();
}

  
 
 
 @override
  Widget build(BuildContext context) {


    return CupertinoPageScaffold(
      //flutter framework
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar:const CupertinoNavigationBar(
          backgroundColor: CupertinoColors.systemGrey3,
          middle:  Text(
            "Currency Converter",
            style: TextStyle(color: CupertinoColors.white),
          )),
      child: Center(
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
                10), 
            child: CupertinoTextField(
              controller: textEditingController,
              style: const TextStyle(
                color: CupertinoColors.black,
              ),
              decoration: BoxDecoration(
                color: CupertinoColors.white,
                border: Border.all(),
                borderRadius: BorderRadius.circular(5),

              ),
              placeholder: "Please enter the amount in USD",
              prefix: const Icon(CupertinoIcons.money_dollar),
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: CupertinoButton(
     color: CupertinoColors.black,
              onPressed: convert,
              child: const Text("Convert"),
            )),

      ])),
    );
  }
}