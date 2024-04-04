import 'package:first/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int height = 210;
  int weight = 50;

  String gender = '';

  late double bmi = calBMI(height: height, weight: weight);
  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      body: SafeArea(
        child:Container( color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: (){

                    print("male");
                    setState(() {
                      gender = 'M';
                    });
                    
                  },
                  child: Container(
                    height: 200,
                    width: 175,
                    decoration: BoxDecoration(
                      color: gender == 'M'? Colors.orange.withAlpha(150):Colors.orange.withAlpha(50),
                      borderRadius: BorderRadius.circular(25)),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: const [
                        Icon(Icons.male, size: 150,),
                        Text("Male"),
                      ],
                    ),
                  ),
                ),
               const Spacer(), 
               GestureDetector(onTap: (){
                 print("Female");
                 setState(() {
                  gender = 'F';

                 });

               },
              child:Container(
                  height: 200,
                  width: 175,
                  decoration: BoxDecoration(
                     color: gender == 'F'? Colors.orange.withAlpha(150):Colors.orange.withAlpha(25),
                    borderRadius: BorderRadius.circular(25)),
                  padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: const[
                    Icon(Icons.female, size: 150,),
                    Text("FeMale"),
                  ],
                )
                )
               ),
                     
              ],
            ),

            SizedBox(height: 50),
            Row(
              children: [
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children:  [
                     const Text("Height"),
                      Text("$height",
                       style: kInputLabelColor,
                          ), 
                          Row(
                            children: [
                              FloatingActionButton(onPressed: (){
                                setState(() {
                                  if(height >50)
                                   height--;
                                   bmi = calBMI(height: height, weight: weight);
                                });
                               
                                print(height);
                              }, 
                              child: Icon(Icons.remove, size: 40,),),
                              const SizedBox(width: 25),
                              FloatingActionButton(onPressed:(){
                                setState(() {
                                  if(height<210)
                                   height++;
                                   bmi = calBMI(height: height, weight: weight);
                                });
                                print(height);
                              }
                              , child: Icon(Icons.add, size: 40,),)
                            ]),
                    ],
                  ),
                ),
               const Spacer(), 
                   Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children:  [
                     const Text("Weight"),
                      Text("$weight",
                       style:kInputLabelColor
                     ),
                          Row(
                            children: [
                              FloatingActionButton(onPressed:(){
                                setState(() {
                                   if(weight>10)
                                weight--;
                                bmi = calBMI(height: height, weight: weight);
                                });
                               
                                print(weight);
                              }
                              , child: Icon(Icons.remove, size: 40,),),
                              const SizedBox(width: 25),
                              FloatingActionButton(onPressed:(){
                                setState(() {
                                  if(weight<250)
                                  weight++;
                                  bmi = calBMI(height: height, weight: weight);
                                });
                              }
                              , child: Icon(Icons.add, size: 40,),)

                            ]),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 50,),

            Column(children: [
              const Text("BMI"),
              Text(
                bmi.toStringAsFixed(2),
               style: kInputLabelColor.copyWith(color: kOutputTextColor,fontSize: 60),),
               Text(getResult(bmi))

            ],)
            ],
        ),
      ),
      )
    );
  }

  double calBMI({ required int height, required int weight}){ 
    return (weight / (height * height)) * 10000;
  }

  static String getResult(bmiValue){
    if(bmiValue >=25){
      return 'overweight';
    }else if(bmiValue > 18.5){
      return 'Normal';
    }else {
      return 'underweight';
    }
  }
  
}
