import 'package:go_router/go_router.dart';
import 'package:login_dashboard_app/screens/dashboard_screen.dart';
import 'package:login_dashboard_app/screens/login_screen.dart';
import 'package:login_dashboard_app/screens/profile_screen.dart';
import 'package:login_dashboard_app/screens/edit_profile_screen.dart';

// GRUPPO DI ROTTE
final router = GoRouter(
  // Si apre come prima pagina la dashboard
  initialLocation: '/dashboard',
  routes: [
    GoRoute(
      // Percorso della rotta  (URL interno dell'app)
      path: '/dashboard',

      // Builder: dice quale schermata deve essere mostrata
      builder: (context, state) {
        return const DashboardScreen();
      },
    ),
    GoRoute(
      // Percorso della rotta  (URL interno dell'app)
      path: '/login',

      // Builder: dice quale schermata deve essere mostrata
      builder: (context, state) {
        return const LoginScreen();
      },
    ),
    GoRoute(
      // Percorso della rotta  (URL interno dell'app)
      path: '/profile',

      // Builder: dice quale schermata deve essere mostrata
      builder: (context, state) {
        return const ProfileScreen();
      },
    ),
    GoRoute(
      // Percorso della rotta  (URL interno dell'app)
      path: '/edit-profile',

      // Builder: dice quale schermata deve essere mostrata
      builder: (context, state) {
        return const EditProfileScreen();
      },
    ),
  ],
);
