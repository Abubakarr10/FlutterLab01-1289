import 'package:flutter/material.dart';

class WeightScreen extends StatefulWidget {
  const WeightScreen({super.key});

  @override
  State<WeightScreen> createState() => _WeightScreenState();
}

class _WeightScreenState extends State<WeightScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          const SizedBox(height: 60,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Your ",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700),),
              Text("current weight",style: TextStyle(fontSize: 40,fontWeight: FontWeight.w700,color: Colors.pinkAccent),),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 40),
            child: Text('We will use this type of data to give you a better diet type for you',style:
            TextStyle(
              fontWeight: FontWeight.w500, color: Colors.pinkAccent,
            ),),
          ),
          SizedBox(height: MediaQuery.sizeOf(context).height *.2,),
          Row(
            children: [
              Flexible(
                child: Container(
                  height: 400,
                  width: MediaQuery.sizeOf(context).width,
                  margin: const EdgeInsets.only(right: 10,left: 30,),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(colors: [Colors.blue,Colors.blueAccent.shade100]),
                    image: const DecorationImage(image: AssetImage('assets/images/man.png'),
                        scale: 1.6
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  height: 400,
                  margin: const EdgeInsets.only(left: 10,right: 30,),
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(colors: [Colors.pink,Colors.pinkAccent.shade100]),
                    image: const DecorationImage(image: AssetImage('assets/images/woman.png'),
                        scale: 1.6
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

