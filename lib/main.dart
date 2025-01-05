import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appbar: Appbar(
            backgroundColor: Colors.orange,
            title: Text('MyCustonWidget')
        ),
        body: Container(
            child: Column(
                children: [
                    MyCustonWidget(
                        btnName: 'Login',
                        icon: Icon(Icons.login),
                        voidCallback: (){
                            //Function coding here
                            print("Firebase login");
                        },
                        //textStyle: Custom-textstyle or TextStyle Widget
                    ),
                ]
            )
        )
    );
  }
}