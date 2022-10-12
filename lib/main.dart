import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './blecontroller.dart';

void main() {
  runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,),
        home: MyHomePage());}}

class MyHomePage extends StatelessWidget {
  TextStyle myStyle = TextStyle(fontSize: 30);
  final BleController c = Get.put(BleController());
  MyHomePage();
  @override Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: Text('ble test')),
        body: Column(children: <Widget>[

          SizedBox(height:50),

          Center(
            child: Container(
              color: Color(0xff224f5a),
              child: Image(image: AssetImage("myassets/nwg.png"),),
            )
          ),

          SizedBox(height: 37,),

          Obx(() => Text('${c.status}',
              style:myStyle)),

          SizedBox(height:50),

          Obx(() => Text('Your HB value is: ${c.temperature}',
              style:myStyle)),

          SizedBox(height:50),

          Obx(() => Container(
              child: c.status != 'connected!'
                  ? ElevatedButton(onPressed: c.connect,
                  child: Text('connect',
                      style:myStyle))
                  : null)),
          Center(child:
          Container(child:Text("Tech4Life Enterprises") ,),)]));}}

//////////////////// filename: blecontroller.dart
// ble no scan get nrf connect in google play store to get ble id
