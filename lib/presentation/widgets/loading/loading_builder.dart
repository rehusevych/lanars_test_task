import 'package:flutter/material.dart';

const _delayDuration = Duration(milliseconds: 800);
const _animationDuration = Duration(milliseconds: 200);

class LoadingFutureBuilder extends StatelessWidget {
  final Widget child;
  final Duration duration;

  const LoadingFutureBuilder({
    super.key,
    required this.child,
    this.duration = _delayDuration,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(duration),
      builder: (context, snap) => AnimatedSwitcher(
        duration: _animationDuration,
        child: snap.connectionState == ConnectionState.done
            ? child
            : const SizedBox.shrink(),
      ),
    );
  }
}
