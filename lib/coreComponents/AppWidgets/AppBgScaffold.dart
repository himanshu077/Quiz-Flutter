import 'package:flutter/material.dart';
import 'package:quiz_flutter_app/coreComponents/appComponents/SvgImage.dart';
import 'package:quiz_flutter_app/coreComponents/components/AppIcons.dart';

class AppBgScaffold extends StatelessWidget {
  final Widget child;
  final EdgeInsets? padding;
  const AppBgScaffold({super.key, required this.child, this.padding});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BgImage(),
          Positioned.fill(child: SafeArea(
            minimum: padding ?? EdgeInsets.zero,
              child: child))
        ],
      ),
    );
  }
}


class BgImage extends StatelessWidget {
  const BgImage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SvgImage(
        url: AppIcons.background,
      width: size.width,
      height: size.height,
    );
  }
}

