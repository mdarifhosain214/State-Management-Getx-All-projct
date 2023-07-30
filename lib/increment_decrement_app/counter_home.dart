
import 'package:flutter/material.dart';
import 'package:flutter_getx_project/increment_decrement_app/counter_controller.dart';
import 'package:get/get.dart';
class CounterHome extends StatelessWidget {
   CounterHome({super.key});
CounterController controller =Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App',style: TextStyle(fontSize: 28,color: Colors.black),),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.red.withOpacity(0.5),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Obx(()=>CircleAvatar(
            
            radius: 100,
              backgroundColor: Colors.red.withOpacity(0.5),
              child: Center(child: Text(controller.count.toString(),style: const TextStyle(fontSize: 60,color: Colors.black),)))),
        const SizedBox(height: 100,),
          Center(
            child: Padding(padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){controller.decrement();},
                    child: Container(height: 40,width: 70,
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(0.5),
                        borderRadius:BorderRadius.circular(8)
                      ),
                      child: const Icon(Icons.remove,size: 40,color: Colors.black,),
                    ),
                  ),
                  const SizedBox(width: 30,),
                  InkWell(
                    onTap: (){controller.increment();},
                    child: Container(height: 40,width: 70,
                      decoration: BoxDecoration(
                          color: Colors.red.withOpacity(0.5),
                          borderRadius:BorderRadius.circular(8)
                      ),
                      child: const Icon(Icons.add,size: 40,color: Colors.black,),
                    ),
                  ),
                   ],),),
          ),

        ],
      ),
    );
  }
}
