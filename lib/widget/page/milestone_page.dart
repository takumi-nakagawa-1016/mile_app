import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:helloworld/widget/component/common/footer.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../component/common/header.dart';

class MilestonePage extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _milestonePage(context, ref);
  }

  Widget _milestonePage(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: customAppbar(),
      body: Center(
        child: Text('milestone'),
      ),
      bottomNavigationBar: customFooter(context)
    );
  }
}
