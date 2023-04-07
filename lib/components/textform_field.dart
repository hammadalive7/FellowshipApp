import 'package:flutter/material.dart';

TextFormField CustomTextFormField(String Hinttext, bool TrailingIcon){
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter some text';
      }
      return null;
    },
    decoration:  InputDecoration(
      // prefixIcon: LeadingIcon ? Icon(Icons.lock) : null,

      suffixIcon: TrailingIcon ? Icon(Icons.lock_open_outlined) : null,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      // labelText: 'Email',
      hintText: Hinttext,
      hintStyle: const TextStyle(
        fontFamily: 'Helvetica Now Display',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        fontSize: 16,
        height: 1,
        color: Color.fromRGBO(87, 85, 85, 0.5),
      ),


    ),

  );


}

Widget LoginOutlinebutton(String button1Text,String button2Text, Function onPressed) {
  return Column(
    children: [
      SizedBox(
          width: double.infinity,
          height: 51,
          child: OutlinedButton(
            onPressed: onPressed as void Function()?,
            style: ElevatedButton.styleFrom(
              side: BorderSide(color: Color(0xFFE03A3C), width: 1),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                    // color: Colors.green,
                    width: 80,
                    child: Center(child: Image.asset("assets/images/googlelogo.png", width: 50, height: 30,))),
                // SizedBox(width: 15,),
                Container(
                  // color: Colors.red,
                  width: 180,
                  child: Center(
                    child: Text(button1Text, style: const TextStyle(fontSize: 16, color: Color.fromRGBO(87, 85, 85, 1)),
                    ),
                  ),
                ),
              ],
            ),

          )

      ),
      SizedBox(height: 20,),
      SizedBox(
        width: double.infinity,
        height: 51,
        child: OutlinedButton(
          onPressed: onPressed as void Function()?,
          style: ElevatedButton.styleFrom(
            side: BorderSide(color: Color(0xFFE03A3C), width: 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Container(
                // color: Colors.green,
                  width: 80,
                  child: Center(child: Image.asset("assets/images/facebook.png", width: 50, height: 30,))),
              // SizedBox(width: 15,),
              Container(
                // color: Colors.red,
                width: 200,
                child: Center(
                  child: Text(button2Text, style: const TextStyle(fontSize: 16, color: Color.fromRGBO(87, 85, 85, 1)),
        ),
                ),
              ),
            ],
          ),

      )

        ),
    ],
  );


}