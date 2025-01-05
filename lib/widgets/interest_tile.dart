import 'package:flutter/material.dart';

class InterestTile extends StatelessWidget {
  final String interest;
  final List<String> imagePaths;
  final bool isSelected;
  final ValueChanged<bool?> onChanged;

  const InterestTile({
    super.key,
    required this.interest,
    required this.imagePaths,
    required this.isSelected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.orange),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: imagePaths.map((path) => Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: Image.asset(path, width: 40, height: 40), // Use each image path
          )).toList(),
        ),
        title: Text(interest),
        trailing: Checkbox(
          value: isSelected,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
