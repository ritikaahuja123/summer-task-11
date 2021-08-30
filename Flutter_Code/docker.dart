import 'package:flutter/material.dart';
import 'package:testapp/constants/app_constants.dart';
import 'package:testapp/widgets/leftbar.dart';
import 'package:testapp/widgets/rightbar.dart';
import 'package:http/http.dart' as http;

class MyDoc extends StatefulWidget {

  @override
  _MyDocState createState() => _MyDocState();
}
class _MyDocState extends State<MyDoc> {
 web() async{
    var r = Uri.http("13.233.10.255", "/cgi-bin/flutter1.py", {"x": cmd});
    var r1 = await http.get(r);
    setState(() {
       _bmiResult=r1.body;
    });
    
    print(r1.body);
    print(cmd);
    
    print(_bmiResult);
  }
TextEditingController _heightController = TextEditingController();
 late  String _bmiResult = "";
 late String _textResult = "";
 late String cmd = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[300],
          centerTitle: true,
          title: Text("DOCKER",
          style:TextStyle(
            fontSize: 20,
            color: Colors.white, 
            fontWeight: FontWeight.w600,
            ),
          ),
        ),
        backgroundColor: Colors.black54,
        body:SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 350,
                    child: TextField(
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      onChanged: (value){
                            cmd = value;
                      },
                      controller: _heightController,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          color: Colors.teal[300] ),
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Icon(Icons.computer,
                          size: 35.0, 
                          color: Colors.white),
                          ),
                        border: OutlineInputBorder(
                        borderRadius:BorderRadius.all(new Radius.circular(15.0))),
                        hintText: "Enter Your Command.... ",
                        hintStyle: TextStyle(color: Colors.white70),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: web,
                child: Container(
                  child: Text(
                    "Run",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: accentHexColor,),
                  ),
                  
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Text(
                  "$_bmiResult", //toStringAsFixed(2),
                  style: TextStyle(fontSize: 20, color: Colors.teal[300]),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Visibility(
                visible: _textResult.isNotEmpty,
                  child: Container(
                child: Text(
                  _textResult,
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      color: accentHexColor),
                ),
              )),
              SizedBox(
                height: 10,
              ),
              LeftBar(
                barWidth: 40,
              ),
              SizedBox(
                height: 20,
              ),
              LeftBar(barWidth: 70),
              SizedBox(
                height: 20,
              ),
              LeftBar(
                barWidth: 40,
              ),
              SizedBox(
                height: 20,
              ),
              RightBar(barWidth: 70),
              SizedBox(
                height: 50,
              ),
              RightBar(barWidth: 70),
            ],
          ),
        ));
  }
}
