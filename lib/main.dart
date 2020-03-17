import 'package:flutter/material.dart';
import 'package:flutter_wallet/src/pages/home_page.dart';
import 'package:flutter_wallet/src/pages/money_transfer_page.dart';
import 'package:flutter_wallet/src/theme/theme.dart';
import 'package:flutter_wallet/src/widgets/custom_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallet App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme.copyWith(
        textTheme: Theme.of(context).textTheme,
      ),
      routes: <String, WidgetBuilder>{
        '/': (_) => HomePage(),
        '/transfer': (_) => MoneryTransferPage()
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pageElements = settings.name.split('/');
        if (pageElements[0] == '') {
          return null;
        }
        if (pageElements[0] == 'transfer') {
          return CustomRoutes<bool>(
              builder: (BuildContext context) => MoneryTransferPage());
        }
      },
    );
  }
}
