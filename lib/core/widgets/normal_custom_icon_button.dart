import 'package:flutter/material.dart';

class NormalCustomIconButton extends StatelessWidget {
  //final String text;
  final IconData icon;
  final double iconSize;
  final VoidCallback onPressed;
  final double height;
  final double weight;
  final double fontSize;
  final Color textColor;
  final Color fillColor;
  final bool showIcon;
  final IconData? sufixIcon;

  const NormalCustomIconButton({
    super.key,
    required this.icon,
    required this.iconSize,
    //  required this.text,
    required this.onPressed,
    this.height = 40,
    this.weight = 140,
    this.fontSize = 14,
    this.textColor = Colors.white,
    this.fillColor = Colors.red,
    this.showIcon = false,
    this.sufixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: height,
      // width: weight,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            // borderRadius: BorderRadius.circular(8),
            gradient: LinearGradient(
              stops: [0.0, 0.4, 9.0],
              colors: [
                Color(0xff7B0100).withOpacity(0.8),
                Color(0xFFCE0000),
                Color(0xff7B0100).withOpacity(0.8),
              ],
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Icon(icon, color: Colors.white, size: iconSize),
              ),
              if (showIcon && sufixIcon != null) ...[
                const SizedBox(width: 5),
                Icon(sufixIcon, color: Colors.white),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class SmallSemiTranparentIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final double height;
  final double weight;
  final double iconSize;
  final Color textColor;
  final Color fillColor;
  final bool showIcon;
  final IconData? sufixIcon;

  const SmallSemiTranparentIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.height = 30,
    this.weight = 90,
    this.iconSize = 20,
    this.textColor = Colors.white,
    this.fillColor = Colors.white12,
    this.showIcon = false,
    this.sufixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: weight,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: fillColor, // Make it red like in your design
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Icon(icon, color: Colors.white, size: iconSize),
            ),
            if (showIcon && sufixIcon != null) ...[
              const SizedBox(width: 0),
              Icon(sufixIcon, color: Colors.white),
            ],
          ],
        ),
      ),
    );
  }
}
