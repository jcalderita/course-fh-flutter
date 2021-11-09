import 'package:flutter/material.dart';

import 'package:app02/src/pages/alert_page.dart';
import 'package:app02/src/pages/avatar_page.dart';
import 'package:app02/src/pages/home_page.dart';
import 'package:app02/src/pages/card_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() => {
      '/': (BuildContext context) => const HomePage(),
      'alert': (BuildContext context) => const AlertPage(),
      'avatar': (BuildContext context) => const AvatarPage(),
      'card': (BuildContext context) => const CardPage(),
    };
