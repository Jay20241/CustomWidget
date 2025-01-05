import 'package:flutter/material.dart';
//YOU CAN CHANGE UI BY CALLING SETSTATE() FUNCTION IN STF.
class MyCustonWidget extends StatelessWidget{
    final String btnName;
    final Icon? icon;
    final Colors? bgColor;
    final TextStyle? textStyle;
    final VoidCallback? voidCallback;

    MyCustonWidget(
        {required this.btnName,
        this.icon,
        this.bgColor = Colors.green, //default param
        this.textStyle,
        this.voidCallback}
    )

    @override
    Widget build(BuildContext context){
        return ElevatedButton(
            onPressed: (){
                voidCallback!();
            },
            child: icon!=null ? Row(
                children: [
                    icon!,
                    Text(btnName, style: textStyle)
                ]
            ) : Text(btnName, style: textStyle),

            style: ElevatedButton.styleFrom(
                primary: bgColor,
                shadowColor: bgColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(5)
                )
            )
        );
    }
}