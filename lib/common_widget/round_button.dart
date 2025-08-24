import 'package:fitness01/common/color_extension.dart';
import 'package:flutter/material.dart';

enum RoundButtonType { bgGradient, textGradient }

class RoundButton extends StatelessWidget {
  final String title;
  final RoundButtonType type;
  final VoidCallback onPressed;
  const RoundButton({
    super.key,
    required this.title,
    this.type = RoundButtonType.textGradient,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0), // Add space around the button
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: Tcolor.primaryG,
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
          borderRadius: BorderRadius.circular(25),
          boxShadow: type == RoundButtonType.bgGradient
              ? const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 2,
                    offset: Offset(0, 2),
                  ),
                ]
              : null,
        ),
        child: MaterialButton(
          onPressed: onPressed,
          height: 50,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          textColor: Tcolor.primaryColor1,
          minWidth: double.maxFinite,
          elevation: type == RoundButtonType.bgGradient ? 0 : 1,
          color: type == RoundButtonType.bgGradient
              ? Colors.transparent
              : Tcolor.white,
          child: type == RoundButtonType.bgGradient
              ? Text(
                  title,
                  style: TextStyle(
                    color: Tcolor.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                )
              : ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (bounds) {
                    return LinearGradient(
                      colors: Tcolor.primaryG,
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ).createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                    );
                  },
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Tcolor.primaryColor1,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
        ),
      ),
    );
  }
}
