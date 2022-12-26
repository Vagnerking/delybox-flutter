import 'package:delybox/providers/auth_provider.dart';
import 'package:delybox/providers/company_provider.dart';
import 'package:provider/provider.dart';

class AppProviders {
  static final providers = [
    ChangeNotifierProvider<AuthProvider>(
      create: (_) => AuthProvider(),
    ),
    ChangeNotifierProvider<CompanyProvider>(
      create: (_) => CompanyProvider(),
    ),
  ];
}
