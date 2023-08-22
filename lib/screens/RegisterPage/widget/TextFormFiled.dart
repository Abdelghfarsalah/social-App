import 'package:flutter/material.dart';

class TextfiledF extends StatelessWidget {

  final String hint;
  final TextEditingController controller;
  final String labal;
  final void Function(String)? onchange;
  final String? Function(String?)? validator;
  final IconButton icon;
  final Function()? ontap;
  final  bool password;
    const TextfiledF(
      {super.key,
      required this.controller,
      required this.password,
      required this.hint,
      required this.icon,
      required this.labal,
      required this.onchange,
      this.ontap,
       this.validator});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText:password ,
      decoration: InputDecoration(
      focusedBorder:const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(
          color: Colors.blue
        )
      ),
      enabledBorder:const UnderlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(015)),
        borderSide: BorderSide(
          // color: Colors.grey
        )
      ), 
      contentPadding: EdgeInsets.all(20),
      label: Text('${labal}'),
      hintText: hint,
      suffixIcon: icon,
      //suffixIconColor: Colors.blue
      ),
      onTap: ontap,
      onChanged: onchange,
      validator: validator,
    );
  }
}
