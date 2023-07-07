import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/tic.dart';
// import 'package:getx_tic/controller.dart';

void main()
{
  runApp(GetMaterialApp(home: first(),));
}
class first extends StatelessWidget {

  controller c=Get.put(controller());
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(child: Row(children: [
            Expanded(child: Container(
              alignment: Alignment.center,
              color: Colors.yellow,
              height: 100,
              child: Obx(() => Text("${c.msg.value}",style: TextStyle(fontSize: 30),)),
            )),

          ],)),
          Expanded(child: Row(children: [
            button(0),
            button(1),
            button(2),
          ],)),
          Expanded(child: Row(children: [
            button(3),
            button(4),
            button(5),
          ],)),
          Expanded(child: Row(children: [
            button(6),
            button(7),
            button(8),
          ],)),
          reset(),

        ],
      ),
    );

  }

  button(int i)
  {

    return Expanded(child: InkWell(
      onTap: () =>c.get(i),
      child: Container(
          margin: EdgeInsets.all(5),
          height: double.infinity,
          alignment: Alignment.center,
          width: double.infinity,
          color: Colors.grey,
          child: Obx(() => Text("${c.l[i]}",style: TextStyle(fontSize: 30),))
      ),
    ));

  }
  reset()

  {
    return ElevatedButton(onPressed: () {
      c.reset();
    }, child: Text("Reset"));
  }

}