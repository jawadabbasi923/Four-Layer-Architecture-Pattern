import 'package:dsadas/utils/app_strings.dart';
import 'package:flutter/material.dart';

import '../common/appbar/appbar.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar,
      body: const Center(
        child: Text(''),
      ),
    );
  }

  PreferredSize get _appBar => const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: AppBarItem(
          title: AppText.DASHBOARD_TITLE,
          showBorderBottom: false,
          showLeading: false,
        ),
      );
}
