import 'package:example/views/componnets/demo_button_group.dart';
import 'package:example/views/componnets/demo_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ylui/flutter_ylui.dart';

class DialogDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DemoPage(
      title: 'YlDialogDemo',
      sourceCodePath: 'lib/views/dialog_demo.dart',
      child: Center(
        child: DemoButtonVerticalGroup(
          items: [
            DemoButtonGroupItem('警告确认弹窗', () => _showAlertDialog(context)),
            DemoButtonGroupItem('引导确认弹窗', () => _showHighlightDialog(context)),
            DemoButtonGroupItem(
                '单个按钮确认弹窗', () => _showSingleActionDialog(context)),
            DemoButtonGroupItem(
                '【定制】确认弹窗', () => _showCustomSingleActionDialog(context)),
            DemoButtonGroupItem(
                '多个按钮确认弹窗', () => _showMutipleActionDialog(context))
          ],
        ),
      ),
    );
  }

  _showAlertDialog(BuildContext context) {
    showYlDialog(context, title: '取消视频面试？', actions: [
      YlDialogAction(
        title: '再想想',
        action: () => Navigator.pop(context),
      ),
      YlDialogAction(
          title: '继续取消', alert: true, action: () => Navigator.pop(context))
    ]);
  }

  _showHighlightDialog(BuildContext context) {
    showYlDialog(context, title: '放弃绑定银行卡表示不可使用银行卡进行支付，是否放弃绑定银行卡？', actions: [
      YlDialogAction(
        title: '否',
        action: () => Navigator.pop(context),
      ),
      YlDialogAction(
          title: '是', highlight: true, action: () => Navigator.pop(context))
    ]);
  }

  _showSingleActionDialog(BuildContext context) {
    showYlDialog(context,
        title: '订单正在审核，暂无法沟通',
        content: '我们正在快速审核订单，预计等待5分钟，审核通过后可与人才直接沟',
        actions: [
          YlDialogAction(
            title: '知道了',
            highlight: true,
            action: () => Navigator.pop(context),
          ),
        ]);
  }

  _showCustomSingleActionDialog(BuildContext context) {
    showYlDialog(context,
        title: '订单正在审核，暂无法沟通',
        contentWidget: Container(
          width: double.infinity,
          height: 88,
          color: Colors.red[50],
        ),
        actions: [
          YlDialogAction(
            title: '知道了',
            highlight: true,
            action: () => Navigator.pop(context),
          ),
        ]);
  }

  _showMutipleActionDialog(BuildContext context) {
    showYlDialog(context,
        title: '你还未注册微信',
        content: '填写信息注册后，继续使用微信',
        actions: [
          YlDialogAction(
            title: '注册',
            highlight: true,
            action: () => Navigator.pop(context),
          ),
          YlDialogAction(
              title: '使用其他登陆方式',
              highlight: true,
              action: () => Navigator.pop(context)),
          YlDialogAction(title: '取消', action: () => Navigator.pop(context))
        ]);
  }
}
