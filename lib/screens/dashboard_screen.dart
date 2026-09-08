import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Importiamo il layout globale (Navbar + Footer).
import 'package:login_dashboard_app/components/app_layout.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      // Titolo mostrato nella Navbar.
      title: 'Dashboard',

      // Contenuto della pagina.
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TITOLO GRANDE
          const Text(
            'Benvenuto nella tua area personale',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 12),

          // SOTTOTITOLO DESCRITTIVO
          Text(
            'Gestisci il tuo profilo, accedi ai tuoi dati e naviga tra le funzionalità dell’app.',
            style: TextStyle(
              fontSize: 18,
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),

          const SizedBox(height: 30),

          // CARD INFORMATIVA STILE AZIENDALE
          Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  // ICONA GRANDE
                  Icon(
                    Icons.account_circle,
                    size: 50,
                    color: Theme.of(context).colorScheme.primary,
                  ),

                  const SizedBox(width: 20),

                  // TESTO DELLA CARD
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Accedi al tuo profilo',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 8),

                        Text(
                          'Visualizza le tue informazioni personali e aggiorna i tuoi dati.',
                          style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context)
                                .colorScheme
                                .onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 40),

          // CALL-TO-ACTION (CTA) PRINCIPALE
          Center(
            child: ElevatedButton.icon(
              // Navigazione verso la pagina di login.
              onPressed: () => context.go('/login'),

              // Icona del pulsante.
              icon: const Icon(Icons.login),

              // Testo del pulsante.
              label: const Text('Vai al Login', style: TextStyle(fontSize: 18)),

              // Stile del pulsante.
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 16,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),

          // TESTO FINALE MOTIVAZIONALE / INFORMATIVO
          Center(
            child: Text(
              'Accedi per continuare.',
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
