//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage({super.key});

  @override
  State createState() =>_CurrencyConverterMaterialPageState();
  
}

class _CurrencyConverterMaterialPageState extends State{
  double result=0;
  double exchangeRate=86.19;
  final TextEditingController _controller = TextEditingController(); 
  
  @override
  Widget build(BuildContext context) {
    print('rebuilt');
    final border=OutlineInputBorder(borderSide: BorderSide(
                      color: Colors.black, 
                      width: 3, 
                      strokeAlign: BorderSide.strokeAlignOutside, 
                      style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(Radius.circular(15)));

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title:const Text("Currency Converter", 
                    style: TextStyle(color: Colors.white, 
                                    fontWeight: FontWeight.bold,
                                    ),
                        ),
        centerTitle: true,
        
      ),
        body: Center( 
          child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
             Text(
              '₹ $result',
              
             style:const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255)
              ),
            ),
            //padding OR container (made of many widgets)
            
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10,top: 12, bottom: 12),
              child: TextField(
                controller: _controller,
                style: const TextStyle(
                  fontSize: 24,
                  color: Color.fromARGB(255, 0, 0, 0)
                  ),
                  decoration: InputDecoration(
                    
                    focusedBorder: border,
                    
                    enabledBorder:border,
                    
                    hintText: "Please Enter Amount in USD", 
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(Icons.attach_money),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    
                  ),
                  keyboardType: TextInputType.number,
              ),
            ),
            
            //button or raised or appears like text
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(               
                // style: const ButtonStyle(
                //   backgroundColor: WidgetStatePropertyAll(Colors.black),
                //   foregroundColor: WidgetStatePropertyAll(Colors.white),
                //   minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50)),
                //   // shape: WidgetStatePropertyAll(BorderRadius.all(Radius.circular(15)) as OutlinedBorder?),
                //   //shape is still offf from rest fox that first!!
                  
                // ),
                /*  _Fix for the shape of button by myself_ 
                above commented block was the part of the tutorial!
                */
                
                style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(8))),
                elevation: 15,
                backgroundColor: (Colors.black),
                foregroundColor: (Colors.white),
                minimumSize: const Size(double.infinity, 56)
                ),
                          
                child: const Text("Convert"), //child defines what material is shown in the text button or 
                                              //such as text or hint or func such as hoverOver etc.
                //func for what the button will perform when pressed
                onPressed: () {
                // print(_controller.text);
                // print(double.parse(_controller.text)*81);
                result = double.parse(_controller.text)*exchangeRate;
                setState(() {
                  
                });                
                },           
              ),
            )

          ],
        ),
      ),
    );
  }
}

/*
class CurrencyConverterMaterialPagee extends StatelessWidget{
  const CurrencyConverterMaterialPagee({super.key});

  @override
  Widget build(BuildContext context) {
    print('rebuilt');
    double result = 0;
    final TextEditingController _controller = TextEditingController(); 

    final border=OutlineInputBorder(borderSide: BorderSide(
                      color: Colors.black, 
                      width: 3, 
                      strokeAlign: BorderSide.strokeAlignOutside, 
                      style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(Radius.circular(15)));

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title:const Text("Currency Converter", 
                    style: TextStyle(color: Colors.white, 
                                    fontWeight: FontWeight.bold,
                                    ),
                        ),
        centerTitle: true,
        
      ),
        body: Center( 
          child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
             Text(
              result.toString(),
              
             style:const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 255, 255, 255)
              ),
            ),
            //padding OR container (made of many widgets)
            
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10,top: 12, bottom: 12),
              child: TextField(
                controller: _controller,
                style: const TextStyle(
                  fontSize: 24,
                  color: Color.fromARGB(255, 0, 0, 0)
                  ),
                  decoration: InputDecoration(
                    
                    focusedBorder: border,
                    
                    enabledBorder:border,
                    
                    hintText: "Please Enter Amount in INR", 
                    hintStyle: const TextStyle(color: Colors.black),
                    prefixIcon: const Icon(Icons.currency_rupee),
                    prefixIconColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    
                  ),
                  keyboardType: TextInputType.number,
              ),
            ),
            //button or raised or appears like text
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(               
                // style: const ButtonStyle(
                //   backgroundColor: WidgetStatePropertyAll(Colors.black),
                //   foregroundColor: WidgetStatePropertyAll(Colors.white),
                //   minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50)),
                //   // shape: WidgetStatePropertyAll(BorderRadius.all(Radius.circular(15)) as OutlinedBorder?),
                //   //shape is still offf from rest fox that first!!
                  
                // ),
                /*  _Fix for the shape of button by myself_ 
                above commented block was the part of the tutorial!
                */
                
                style: TextButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: const BorderRadius.all(Radius.circular(8))),
                elevation: 15,
                backgroundColor: (Colors.black),
                foregroundColor: (Colors.white),
                minimumSize: const Size(double.infinity, 56)
                ),
                          
                child: const Text("Convert"), //child defines what material is shown in the text button or 
                                              //such as text or hint or func such as hoverOver etc.
                //func for what the button will perform when pressed
                onPressed: () {
                // print(_controller.text);
                // print(double.parse(_controller.text)*81);
                result = double.parse(_controller.text)*81;
                build(context);
                },           
              ),
            )

          ],
        ),
      ),
    );
  }
  }

*/