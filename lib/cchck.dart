import 'package:flutter/material.dart';
import 'package:smple/main.dart';
class CheckAuth extends StatefulWidget {
  final double weight;
  final double height;

  CheckAuth(this.weight, this.height);

  @override
  State<CheckAuth> createState() => _CheckAuthState();
}

class _CheckAuthState extends State<CheckAuth> {
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    calculate();
  }
  double Bmivalue=0;
void calculate(){
  double w=double.parse(widget.weight.toString());
  print(w);
  double h1=double.parse(widget.height.toString())/100;
  print(h1);
  double heightsquare=h1*h1;
  Bmivalue=w/heightsquare;
  print(Bmivalue);
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Center(child: Text('BMI CALCULATOR')),
          leading: IconButton(onPressed: (){
            Navigator.pushReplacement(
                context,
                new MaterialPageRoute(
                    builder: (BuildContext context) => new Sample()));
          },icon: Icon(Icons.arrow_back ),

          ),
        ),
        body:Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("your Result",style: TextStyle(fontSize:
            30,color: Colors.white),),
            Center(
              child: Expanded(
                child: Container(
                  height: 600,
                  width: 300,
                  decoration: BoxDecoration(color:
                  Colors.blue,
                      borderRadius: BorderRadius.circular(35)),

                  child: SizedBox(height: 40,
                    child: Column(
                      children: [
                        Text(Bmivalue.toString(),style: TextStyle(
                          fontSize: 30,color: Colors.white
                        ),)

                      ],
                    ),
                  ),

                ),
              ),
            )
          ],

        ),
      ),
    );

  }
}
