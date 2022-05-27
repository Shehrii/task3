import 'package:flutter/material.dart';

customRoundCornerButton(
  BuildContext context, {
  required String title,
  required List<Color> colors,
  required Color shadowColor,
  double? fontSize,
  bool margin = true,
}) {
  return Container(
    width: MediaQuery.of(context).size.width,
    padding: const EdgeInsets.symmetric(vertical: 14),
    margin: EdgeInsets.symmetric(
      horizontal: margin ? 40 : 0,
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28.0),
        gradient: LinearGradient(
          colors: colors,
        ),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: 4.0,
            offset: const Offset(0, 3),
          )
        ]),
    child: Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
        color: Colors.white,
      ),
      textAlign: TextAlign.center,
    ),
  );
}

customCircleShapeImageButton({required String image, Function()? onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.black.withOpacity(0.5),
      ),
      child: Image.asset(
        image,
        color: Colors.white,
        height: 22,
        width: 22,
      ),
    ),
  );
}

customText({
  required String text,
  bool isBold = false,
  Color color = Colors.black,
  double fontSize = 14.0,
  Function()? onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Text(
      text,
      style: TextStyle(
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        color: color,
        fontSize: fontSize,
      ),
    ),
  );
}

customTextField({
  required String? hintText,
  TextEditingController? controller,
  TextInputType? keyboardType,
  Function(String)? onChanged,
}) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    margin: const EdgeInsets.only(bottom: 14),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(24.0),
      boxShadow: [
        BoxShadow(
          color: Colors.blue.shade100,
          blurRadius: 2.0,
          offset: const Offset(0, 3),
        )
      ],
    ),
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w700,
          color: Colors.grey,
        ),
        border: InputBorder.none,
      ),
      style: const TextStyle(
        fontWeight: FontWeight.w500,
      ),
      keyboardType: keyboardType,
      onChanged: onChanged,
    ),
  );
}
