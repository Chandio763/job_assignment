import 'package:flutter/material.dart';

class GlobalButton extends StatelessWidget {
  final void Function()? onPressed;
  const GlobalButton({super.key,this.backgroundColor, this.height, required this.child, required this.onPressed });
  final Color? backgroundColor;
  final double? height;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        minimumSize: Size(double.infinity, height?? 45),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: child
    );
  }
}
