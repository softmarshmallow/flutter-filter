import 'package:flutter/material.dart';

class ChipFilterItem extends StatelessWidget {
  final bool selected;
  final Function(bool) onSelected;
  final Widget child;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;

  const ChipFilterItem(
      {Key key,
      this.selected = false,
      this.onSelected,
      @required this.child,
      this.padding = const EdgeInsets.all(8),
      this.margin = const EdgeInsets.all(0)})
      : super(key: key);

  BoxDecoration get decoration {
    if (selected) {
      return BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.all(Radius.circular(16)));
    } else {
      return BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.all(Radius.circular(16)));
    }
  }

  bool get next {
    return !selected;
  }

  /// when selection event occurred inside this widget. by gesture detector or such so.
  onSelect() {
    onSelected(next);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          padding: padding,
          margin: margin,
          decoration: decoration,
          child: child,
        ),
        onTap: onSelect);
  }
}
