import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String? categoryName;
  final VoidCallback? onTap;

  const CategoryButton({Key? key, this.categoryName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.white, width: 0.7),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Text(
          categoryName ?? 'Edit me',
          style: Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 13),
        ),
      ),
    );
  }
}
