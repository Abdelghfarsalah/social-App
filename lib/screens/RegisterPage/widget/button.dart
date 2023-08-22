import 'package:flutter/material.dart';

class button extends StatelessWidget {
  const button({super.key, required this.name, required this.ontap});
  final String name;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.blue,
                blurRadius: 20,
                spreadRadius: BorderSide.strokeAlignCenter,
                offset: Offset(0, 5))
          ],
          borderRadius: BorderRadius.circular(25),
          color: Colors.blue,
        ),
        height: 70,
        width: MediaQuery.of(context).size.width * 0.7,
        child: Center(
          child: Text(
            name,
            style: const TextStyle(
                fontFamily: 'RobotoSlab',
                fontWeight: FontWeight.w900,
                fontSize: 25,
                color: Colors.white),
          ),
        ),
      ),
    );
  }
}
