import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Action button'),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 400,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue,width: 2,),
              borderRadius: BorderRadius.circular(15),

            ),
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 10,

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      // SizedBox(
                      // width: 2,
                      // ),


                      FloatingActionButton(onPressed: () {

                      },child: Icon(Icons.add),
                      ),

                      ElevatedButton(onPressed:() {

                      }, child: Text('submit the form',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),

                      ),
                      TextButton(onPressed: () {

                      }, child: Text('Read more',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
                      ),



                    ],

                  ),
                ),
                SizedBox(
                  height: 10,

                ),



                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(onPressed: () {

                      }, icon: Icon(Icons.arrow_back_ios,size: 25,),
                      ),
                      OutlinedButton(onPressed: () {

                      }, child: Text('Text Here',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold,),),
                      ),

                      FilledButton.tonal(onPressed: (){

                      }, child:Row(
                        children: [
                          Icon(Icons.add,),
                          Text('add'),
                        ],
                      ),
                      ),

                    ],
                  ),
                )
              ],
            ),


          ),
          Column(
            
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.cyan,width: 2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child:Column(
                  children: [
                       SizedBox(
                         height: 10,

                       ),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             ElevatedButton(onPressed: () {

                             }, child:Icon(Icons.access_alarms,),
                             ),
                           ],
                         ),
                       ),


                  ],
                ),
              ),

            ],




          ),


        ],

      ),

    );
  }
}
