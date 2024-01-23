import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'TapWidget.dart';

class SvgImage extends StatelessWidget {
  final String url;
  final double? size;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final double? radius;
  final EdgeInsets? margin;
  final Function()? onTap;
  final bool hasBorder;
  final Color? tintColor;

  const SvgImage(
      {super.key,
        required this.url,
        this.size,
        this.height,
        this.width,
        this.fit, this.onTap, this.radius, this.margin, this.hasBorder = false, this.tintColor, });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: Stack(
        children: [
          Container(
            height: size ?? height,
            width: size ?? width,
            decoration: hasBorder ? BoxDecoration(
                borderRadius: BorderRadius.circular(radius ?? 0),
            ) : null,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(radius ?? 0),
              child: Container(
                child: SvgPicture.asset(
                  url,
                  width: size ?? width,
                  height: size ?? height,
                  fit: fit ?? BoxFit.cover,
                  color: tintColor,
                )
                ,
              ),
            ),
          ),
          Positioned.fill(child: TapWidget(onTap: onTap,))
        ],
      ),
    );
  }
}
