import 'package:flutter/material.dart';
import 'package:harika_2106/utils/icon_list.dart';

class InterestTile extends StatelessWidget {
  final String interest;
  final bool isSelected;
  final ValueChanged<bool?> onChanged;

  const InterestTile({
    Key? key,
    required this.interest,
    required this.isSelected,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.orange),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        leading: Icon(IconWidget.getIcon(interest)),
        title: Text(interest),
        trailing: Checkbox(
          value: isSelected,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
