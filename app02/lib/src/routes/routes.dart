import 'package:flutter/material.dart';

import 'package:app02/src/pages/alert_page.dart';
import 'package:app02/src/pages/avatar_page.dart';
import 'package:app02/src/pages/home_page.dart';
import 'package:app02/src/pages/card_page.dart';
import 'package:app02/src/pages/animated_container.dart';
import 'package:app02/src/pages/input_page.dart';
import 'package:app02/src/pages/slider_page.dart';
import 'package:app02/src/pages/listview_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() => {
      '/': (BuildContext context) => const HomePage(),
      'alert': (BuildContext context) => const AlertPage(),
      AvatarPage.pageName: (BuildContext context) => const AvatarPage(),
      'card': (BuildContext context) => const CardPage(),
      'animatedContainer': (BuildContext context) =>
          const AnimatedContainerPage(),
      'inputs': (BuildContext context) => const InputPage(),
      'slider': (BuildContext context) => const SliderPage(),
      'list': (BuildContext context) => const ListViewPage(),
    };
