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

//IF YOU WANT TO DESIGN THE ROW, THAT WILL SHOW 
//ITS CHILDREN ACCORDING TO WIDTH, & OTHER CHILDREN
//WILL AUTOMATICALLY GO BELOW & NOT BE SCROLLABLE.

//SO USE "Wrap()" instead of "Row()"
//Wrap(
//  direction: Axis.horizontal.
//  spacing: 11
//  runSpacing: 11
//  children: [
//
//
//  ]
// )