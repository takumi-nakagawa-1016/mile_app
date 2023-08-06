import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../component/common/footer.dart';
import '../component/common/header.dart';

class HomePage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _homePage(context, ref);
  }

  Widget _homePage(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: customAppbar(),
        body: Center(
          child: Text('home'),
        ),
        bottomNavigationBar: customFooter(context)
    );
  }
}