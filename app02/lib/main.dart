import 'package:app02/src/pages/alert_page.dart';
import 'package:app02/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: const [Locale('es', 'ES'), Locale('en', 'US')],
      debugShowCheckedModeBanner: false,
      title: 'Componentes APP',
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (settings) => MaterialPageRoute(
          builder: (BuildContext context) => const AlertPage()),
    );
  }
}
