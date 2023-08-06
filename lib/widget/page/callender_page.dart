import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/widget/component/calender/basic_calender.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../component/common/footer.dart';
import '../component/common/header.dart';

class CalenderPage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _calenderPage(context, ref);
  }

  Widget _calenderPage(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: customAppbar(),
        body: Center(
          child: TableBasicsExample(),
        ),
        bottomNavigationBar: customFooter(context)
    );
  }
}