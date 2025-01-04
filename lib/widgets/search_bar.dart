import 'package:flutter/material.dart';
import 'package:harika_2106/utils/image_constants.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.purple),
      ),
      child: Row(
        children: [
          Image.asset(
            ImagesConstants.vector,
            width: 22.0,
            height: 22.0,
          ),
          SizedBox(width: 8.0),
          Text(
            'Search Here',
            style: TextStyle(
              color: Colors.purple,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
