import 'package:flutter/material.dart';

import '../common/color_extension.dart';

class TodayTargetCall extends StatelessWidget {
  final String icon;
  final String value;
  final String title;
  const TodayTargetCall({
    super.key,
    required this.icon,
    required this.value,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Tcolor.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Image.asset(icon, width: 40),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (bounds) {
                    return LinearGradient(
                      colors: Tcolor.primaryG,
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ).createShader(
                      Rect.fromLTRB(0, 0, bounds.width, bounds.height),
                    );
                  },
                  child: Text(
                    value,
                    style: TextStyle(
                      color: Tcolor.white.withAlpha(125),
                      fontWeight: FontWeight.w700,
                      fontSize: 14,
                    ),
                  ),
                ),

                Text(
                  title,
                  style: TextStyle(color: Tcolor.black, fontSize: 12),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
