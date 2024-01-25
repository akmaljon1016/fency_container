import 'package:flutter/material.dart';

class CustomContainer extends StatefulWidget {
  final double? width;
  final double? height;
  final Color? color1;
  final Color? color2;
  final String title;
  final Color? textColor;
  final String subtitleColor;
  final EdgeInsetsGeometry? padding;

  const CustomContainer(
      {super.key,
      this.width,
      this.height,
      this.color1,
      this.color2,
      this.title = "title",
      this.textColor,
      this.subtitleColor = "subtitleColor",
      this.padding});

  @override
  State<CustomContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<CustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? MediaQuery.of(context).size.width * 0.98,
      height: widget.height,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(colors: [
            widget.color1 ?? const Color(0xFFCB1841),
            widget.color2 ?? const Color(0xFF2604DE),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          boxShadow: const [
            BoxShadow(color: Colors.grey, blurRadius: 12, offset: Offset(0, 6))
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              "${widget.title}",
              style: TextStyle(
                  color: widget.textColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              "${widget.subtitleColor}",
              style: TextStyle(
                  color: widget.textColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
