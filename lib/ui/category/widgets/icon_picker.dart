import 'package:flutter/material.dart';
import 'package:easy_tasks/domain/category/category_icons.dart';

class IconPickerWidget extends StatelessWidget {
  final IconData selectedIcon;
  final ValueChanged<IconData> onIconSelected;

  final items = codeIconMap.values;

  IconPickerWidget({Key key, this.selectedIcon, this.onIconSelected})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.0,
      height: 280.0,
      child: GridView.count(
        crossAxisCount: 4,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
        children: items
            .map((IconData icon) => child(icon, icon == selectedIcon))
            .toList(),
      ),
    );
  }

  Widget child(IconData icon, bool isSelected) {
    return IconButton(
      onPressed: () {
        onIconSelected.call(icon);
      },
      icon: Icon(icon),
      color: isSelected ? Colors.cyan : Colors.black,
    );
  }
}
