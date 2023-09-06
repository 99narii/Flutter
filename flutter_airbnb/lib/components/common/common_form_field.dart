 import 'package:flutter/material.dart';
import 'package:flutter_airbnb/components/styles.dart';

class CommonFormField extends StatelessWidget {

  final prefixText;
  final hintText;

  const CommonFormField({required this.prefixText, required this.hintText});
   @override
   Widget build(BuildContext context) {
     return Stack(
       children: [
       TextFormField(
         textAlignVertical: TextAlignVertical.bottom,   //contentPadding과 함께 주어야함
         decoration: InputDecoration(
           contentPadding: EdgeInsets.only(top:30, left:20, bottom: 10),
           hintText: hintText,
           border: OutlineInputBorder(
             borderRadius: BorderRadius.circular(10)
           ),
           focusedBorder: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10),    //포커스 잡혔을때 색 설정
             borderSide: BorderSide (
               color: Colors.black,
               width: 2,
             ),
           )
         ),
       ),
         Positioned(
           top: 8,
           left: 20,
             child: Text(prefixText,
               style: overLine(),
             ),
         ),
       ]
     );

   }
 }
