import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:tp_contact_list/main.dart';

import 'widget/LoginPage.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = Provider.of(context);
    return user!=null ? const MyHomePage(title: 'home') : LoginPage();
  }
}
