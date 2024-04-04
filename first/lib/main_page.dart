import 'package:first/constant.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int height = 210;
  int weight = 50;
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      Icon(Icons.male, size: 150,),
                      Text("Male"),
                    ],
                  ),
                ),
               const Spacer(), 
                Padding(
                  padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: const[
                    Icon(Icons.female, size: 150,),
                    Text("FeMale"),
                  ],
                )
                )                        
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
                                });
                               
                                print(height);
                              }, 
                              child: Icon(Icons.remove, size: 40,),),
                              const SizedBox(width: 25),
                              FloatingActionButton(onPressed:(){
                                setState(() {
                                  if(height<210)
                                   height++;
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
                     const Text("76",
                       style:kInputLabelColor
                     ),
                          Row(
                            children: [
                              FloatingActionButton(onPressed:null, child: Icon(Icons.remove, size: 40,),),
                              const SizedBox(width: 25),
                              FloatingActionButton(onPressed:null, child: Icon(Icons.add, size: 40,),)

                            ]),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 50,),

            Column(children: [
              Text("BMI"),
              Text("22.00", style: kInputLabelColor.copyWith(color: kOutputTextColor,fontSize: 60),)
            ],)
            ],
        ),
      ),
      )
    );
  }

  void onHeighMinus(){
    print("h m");
  }
}
