import 'package:flutter/material.dart';

class ListButton extends StatelessWidget {
  const ListButton({
    Key? key,
    this.onTap,
  }) : super(key: key);

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Container(
        height: 100,
        width: 300,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  void _onTap() {
    onTap?.call();
  }
}
