import 'package:example/views/componnets/demo_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ylui/flutter_ylui.dart';

class FloatingBottomView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DemoPage(
      title: 'YlFloatingBottom',
      sourceCodePath: 'lib/views/floating_bottom_view.dart',
      contentPadding: EdgeInsets.zero,
      bottomSafe: false,
      child: Column(
        children: [
          Spacer(),
          YlFloatingBottom(
            backgroundColor: YlColors.white,
            child: Container(
              height: 44,
              color: Colors.red[50],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          YlFloatingBottom(
            backgroundColor: YlColors.white,
            child: YlButton.fromType(
              size: YlButtonSize.max,
              type: YlButtonType.primary,
              child: Text('Button'),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
