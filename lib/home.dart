
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{

 
  @override
  State createState() => HomePageState();

}

class HomePageState extends State<HomePage> {

 var num1 =0,num2= 0, sum = 0;

 final TextEditingController t1 = new TextEditingController(text: "0");
 final TextEditingController t2 = new TextEditingController(text: "0");

  void doAddition(){
    this.setState((){
      num1= int.parse(t1.text);
      num2= int.parse(t2.text);
      sum = num1 + num2;
    });
  }
  void doSub(){
    this.setState((){
      num1= int.parse(t1.text);
      num2= int.parse(t2.text);
      sum = num1 - num2;
    });
  }
  void doMul(){
    this.setState((){
      num1= int.parse(t1.text);
      num2= int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv(){
    this.setState((){
      num1= int.parse(t1.text);
      num2= int.parse(t2.text);
      sum = (num1 / num2).toInt();
    });
  }

  void doClear(){
    this.setState(() {
      t1.text = "0";
      t2.text = "0";
      sum = 0;

    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Output : $sum",
              style: TextStyle(
                fontSize: 20,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Number 1"
              ),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Number 2"
              ),
              controller: t2,
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20.0)
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                    ElevatedButton(
                      onPressed: doAddition, 
                      child: Text("+")),
                      ElevatedButton(
                      onPressed: doSub, 
                      child: Text("-")),
                  ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                  onPressed: doMul, 
                  child: const Text("*")),
                  ElevatedButton(
                  onPressed: doDiv, 
                  child: const Text("/"))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0)
                  ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 250,
                        child: ElevatedButton(
                          onPressed: doClear, 
                        child: Text("Clear")),
                      )
                      
                    ],
                 )
                ],
              )
          ],
        
        ),
      ),
    );
  }
}