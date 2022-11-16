// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScrollToHideWidget extends StatefulWidget {
  final ScrollController scrollController;
  final Duration duration;
  final Widget child;
  final double height;

  const ScrollToHideWidget({
    Key? key,
    required this.scrollController,
    this.duration = const Duration(milliseconds: 200),
    required this.child,
    this.height = 56,
  }) : super(key: key);

  @override
  State<ScrollToHideWidget> createState() => _ScrollToHideWidgetState();
}

class _ScrollToHideWidgetState extends State<ScrollToHideWidget> {
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();
    widget.scrollController.addListener(listen);
  }

  @override
  void dispose() {
    widget.scrollController.removeListener(listen);
    super.dispose();
  }

  void listen() {
    final direction = widget.scrollController.position.userScrollDirection;
    if (direction == ScrollDirection.forward) {
      show();
    } else if (direction == ScrollDirection.reverse) {
      hide();
    }
  }

  void show() {
    if (!_isVisible) {
      setState(() => _isVisible = true);
    }
  }

  void hide() {
    if (_isVisible) {
      setState(() => _isVisible = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: _isVisible ? widget.height : 0,
      duration: widget.duration,
      child: Wrap(
        children: [widget.child],
      ),
    );
  }
}
