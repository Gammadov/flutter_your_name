// Flutter imports:
import 'package:flutter/material.dart';

class HeightConstrainedText extends StatelessWidget {
  final double heightFactor;
  final BoxFit fit;
  final Widget text;

  const HeightConstrainedText({
    Key? key,
    required this.heightFactor,
    this.fit = BoxFit.scaleDown,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * heightFactor,
      child: FittedBox(
        fit: fit,
        child: text,
      ),
    );
  }
}
