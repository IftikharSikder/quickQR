import 'package:go_router/go_router.dart';
import 'package:quick_qr/features/qr/screens/qr_generator_screen.dart';

enum Routes { qrGeneratorScreen }

class   AppRoutes {
  static GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: Routes.qrGeneratorScreen.name,
        path: "/",
        builder: (context, state) => QrGeneratorScreen(),
      ),
    ],
  );
}
