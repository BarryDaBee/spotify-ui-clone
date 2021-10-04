import 'package:flutter/material.dart';

class SlideUpRoute extends PageRouteBuilder {
  final Widget view;
  SlideUpRoute({required this.view})
      : super(
            pageBuilder: (context, animation, secondaryAnimation) => view,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return SlideTransition(
                position: Tween<Offset>(
                  begin: Offset(0, 1),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            });
}
