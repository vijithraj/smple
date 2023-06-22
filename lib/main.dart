import 'package:flutter/material.dart';
import 'package:smple/cchck.dart';

void main() {
  runApp(MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Sample()));
}
enum Gender{
  male,
  female,
}
class Sample extends StatefulWidget {
  const Sample({Key? key}) : super(key: key);

  @override
  State<Sample> createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  double Bmivalue = 0;
  double _currentslidervalue = 100;
  double weight = 0;
  double age = 0;
  bool colorchanges = false;
  Gender?selectedGender;




  void calculaterdesing() {
    print("CALCULATE");
    double w = double.parse(weight.toString());
    print(w);
    double h1 = double.parse(_currentslidervalue.toString()) / 100;
    print(h1);
    double heightsquare = h1 * h1;
    Bmivalue = w / heightsquare;
    print(Bmivalue);
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Center(
            child: Text("BMI CALCULATER"),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            selectedGender=Gender.male;
                            colorchanges=!colorchanges;
                          });
                        },
                        child: Container(

                          child: Column(
                            children: [
                              Icon(
                                Icons.male,
                                color: Colors.white,
                                size: 80,
                              ),
                              Text(
                                "MALE",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              )
                            ],
                          ),
                          width: 140,
                          height: 150,
                          decoration: BoxDecoration(
                              color: selectedGender==Gender.male
                                  ?Colors.lightGreen.shade600
                                  :Colors.deepPurple,

                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 38,
                    ),
                
                    Expanded(
                      child: InkWell(
                        onTap: (){
                          setState(() {
                            selectedGender=Gender.female;
                            colorchanges=!colorchanges;
                          });
                        },
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                color: Colors.white,
                                size: 80,
                              ),
                              Text(
                                "FEMALE",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          height: 150,
                          width: 140,
                          decoration: BoxDecoration(
                              color: selectedGender==Gender.female
                              ?Colors.lightGreen.shade600
                              :Colors.deepPurple,
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
             
              Expanded(
                child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "HEIGHT",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "$_currentslidervalue",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        Slider(
                            value: _currentslidervalue,
                            min: 0,
                            max: 200,
                            divisions: 100,
                            label: _currentslidervalue.round().toString(),
                            onChanged: (double value) {
                              setState(() {
                                _currentslidervalue = value;
                              });
                            })
                      ],
                    ),width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(30),
                    )),
              ),



              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "WEIGHT",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              weight.toString(),
                              style: TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(
                                        () {
                                          weight++;
                                        },
                                      );
                                    },
                                    child: const Icon(Icons.add),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    child: const Icon(Icons.remove),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        height: 150,
                        width: 140,
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                    SizedBox(
                      width: 38,
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "AGE",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              age.toString(),
                              style: TextStyle(fontSize: 30, color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    child: const Icon(Icons.add),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  FloatingActionButton(
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                    child: const Icon(Icons.remove),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        height: 150,
                        width: 140,
                        decoration: BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    )
                  ],
                ),
              ),

              ElevatedButton(
                child: Text(
                  'CALCULATE',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) => new CheckAuth(
                            weight,_currentslidervalue)));
                },
              ),
            ],
          ),
        ),
    );
  }
}
