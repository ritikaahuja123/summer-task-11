import 'package:flutter/material.dart';
import 'package:testapp/constants/app_constants.dart';
import 'package:testapp/docker.dart';
import 'package:testapp/kube.dart';

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Text('DevOps App'),       
      ),

      body: Container(
        decoration: new BoxDecoration(
          image: DecorationImage(
            image: NetworkImage("https://i.pinimg.com/originals/af/8d/63/af8d63a477078732b79ff9d9fc60873f.jpg", ),
            fit: BoxFit.cover),
        color: mainHexColor),
        child: Center(
          child: Container( 
            padding: EdgeInsets.only(bottom: 20),             
            child: Column(    
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Devops img
                Expanded(
                  child: Container(
                        padding: const EdgeInsets.only(top: 10),
                        child: Image.network("https://geko.cloud/wp-content/uploads/devops-logo-sinletras.png", ),
                        ),
                ),
                SizedBox(
                  height: 10),

                //KUBERNETES IMG
                 Expanded(
                   child: Container(
                        height: 75.0,
                        padding: const EdgeInsets.only(top: 50),
                        child: Image.network("https://elementi.me/wp-content/uploads/2020/01/Kubernetes-logo.png?w=144",
                        width: 150,),
                        ),
                 ),
                SizedBox(
                  height: 5,
                ),
                
                ElevatedButton(                 
                  onPressed: (){  print("docker run");
                    Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => new MyKube(),
                    ),
                  );                
                  },
                  style: ElevatedButton.styleFrom(
                    primary:Colors.indigoAccent,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical:15),
                    textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
                      child: Text("Kubernetes"),
                ),
              SizedBox(
                  height: 50),
            //Docker Img
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top: 50),
                  child: Image.network("https://www.docker.com/assets/logo-files/Docker-Logo-White-RGB_Moby.png",
                  width: 190,),
                        ),  
                 ),
                SizedBox(
                   height: 10,
                ),
                ElevatedButton(
                  onPressed: (){  print("docker run");
                    Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => new MyDoc(),
                    ),
                  );                
                  },               
                  style: ElevatedButton.styleFrom(
                    primary: Colors.indigoAccent,
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical:15),
                    textStyle: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
                      child: Text("Docker"),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
