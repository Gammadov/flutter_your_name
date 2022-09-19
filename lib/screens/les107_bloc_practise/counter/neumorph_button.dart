import 'package:flutter/material.dart';

typedef onPressed = void Function();

class NeumorphButton extends StatefulWidget {
  final Widget? child;
  final onPressed onTap;

  const NeumorphButton({Key? key, this.child, required this.onTap})
      : super(key: key);

  @override
  State<NeumorphButton> createState() => _NeumorphButtonState();
}

class _NeumorphButtonState extends State<NeumorphButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    // more about color
    // https://imagecolorpicker.com/color-code/72776c
    const Color primary = Color(0xff72776c);
    const double size = 100;
    const Offset distance = Offset(3, 3);
    const double radius = 20;
    const double blur = 10;
    const double spread = 1;

    return GestureDetector(
      onTap: () {
        isPressed = true;
        widget.onTap;
        setState(() {});
        Future.delayed(const Duration(milliseconds: 200)).then((value) {
          isPressed = false;
          setState(() {});
        });
        // isPressed = false;
        // setState(() {});
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 190),
        width: size,
        height: size,
        child: widget.child,
        decoration: BoxDecoration(
          color: primary,
          borderRadius: BorderRadius.circular(radius),
          boxShadow: isPressed
              ? null
              : [
                  const BoxShadow(
                    color: Color(0xff444741),
                    offset: distance,
                    blurRadius: blur,
                    spreadRadius: spread,
                  ),
                  BoxShadow(
                    color: const Color(0xff9ca098),
                    offset: -distance,
                    blurRadius: blur,
                    spreadRadius: spread,
                  ),
                ],
        ),
      ),
    );
  }
}
