import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:     SafeArea(
        child:Container( color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
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
                Column(
                  children: const[
                    Icon(Icons.female, size: 150,),
                    Text("FeMale"),
                  ],
                )
            
                
              ],
            ),
            Row(
              
            )
          ],
        ),
      ),)
     
    ),
    )
;
    
  }
}
