import 'package:flutter/material.dart';
import 'package:payment_app/components/components.dart';

class SizedText extends StatelessWidget {
  const SizedText({
    required this.text,
    Key? key,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    final Size textsize = _textsize(text);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            color: AppColor.green,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          maxLines: 1,
          softWrap: false,
          overflow: TextOverflow.clip,
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            for (int i = 0; i < textsize.width / 5; i++)
              i.isEven
                  ? Container(
                      width: 5,
                      color: AppColor.green,
                      height: 2,
                    )
                  : Container(
                      width: 5,
                      color: Colors.white,
                      height: 2,
                    ),
          ],
        )
      ],
    );
  }

  Size _textsize(String text) {
    final TextPainter textpainter = TextPainter(
        text: TextSpan(
          text: text,
          style: TextStyle(
            fontSize: 13,
            color: AppColor.green,
            fontWeight: FontWeight.bold,
          ),
        ),
        maxLines: 1,
        textDirection: TextDirection.ltr)
      ..layout(
        maxWidth: double.infinity,
        minWidth: 0,
      );
    return textpainter.size;
  }
}
