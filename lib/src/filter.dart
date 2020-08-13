import 'package:flutter/material.dart';

// todo

const double _kFilterItemHeight = kMinInteractiveDimension;

// The container widget for a menu item created by a [DropdownButton]. It
// provides the default configuration for [DropdownMenuItem]s, as well as a
// [DropdownButton]'s hint and disabledHint widgets.

class _FilterItemContainer extends StatelessWidget {
  /// Creates an item for a dropdown menu.
  ///
  /// The [child] argument is required.
  const _FilterItemContainer({
    Key key,
    @required this.child,
  })  : assert(child != null),
        super(key: key);

  /// The widget below this widget in the tree.
  ///
  /// Typically a [Text] widget.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minHeight: _kFilterItemHeight),
      alignment: AlignmentDirectional.centerStart,
      child: child,
    );
  }
}
