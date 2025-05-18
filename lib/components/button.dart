import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class Button extends StatelessWidget {
  final String label;
  final Color color;
  final Color textColor;
  final VoidCallback onPressed;
  final BorderSide? border;
  final double borderRadius;
  final double? width;

  const Button({
    super.key,
    required this.label,
    required this.color,
    required this.textColor,
    required this.onPressed,
    this.border,
    this.borderRadius = 8,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.infinity,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 4),
            blurRadius: 6,
          ),
        ],
        border: border != null ? Border.fromBorderSide(border!) : null,
        borderRadius: BorderRadius.circular(borderRadius),
        color: color,
      ),
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          foregroundColor: textColor,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Text(
          label.tr(),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
