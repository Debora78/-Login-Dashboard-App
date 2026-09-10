// Importiamo i widget base di Flutter.
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_dashboard_app/services/auth_service.dart';

// La ProfileCard mostra i dati dell'utente registrato.
// È completamente aggiornata per mostrare tutti i campi del form.
class ProfileCard extends StatelessWidget {
  // Dati dell'utente da mostrare nella card.
  final String nome;
  final String cognome;
  final String dataNascita;
  final String via;
  final String citta;
  final String provincia;
  final String cap;

  // Costruttore: richiede tutti i campi dell'utente.
  const ProfileCard({
    super.key,
    required this.nome,
    required this.cognome,
    required this.dataNascita,
    required this.via,
    required this.citta,
    required this.provincia,
    required this.cap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      // Elevazione per dare profondità alla card.
      elevation: 4,

      // Bordo arrotondato moderno.
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),

      // Colore della card basato sul tema Material 3.
      color: Theme.of(context).colorScheme.surface,

      child: Padding(
        // Spazio interno della card.
        padding: const EdgeInsets.all(20.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // FOTO PROFILO TONDA
            Center(
              child: CircleAvatar(
                radius: 45, // dimensione della foto
                backgroundColor: Theme.of(context).colorScheme.primary,
                child: const Icon(Icons.person, size: 50, color: Colors.white),
              ),
            ),

            const SizedBox(height: 20),

            // NOME + COGNOME
            Center(
              child: Text(
                '$nome $cognome',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // SEZIONE DATI PERSONALI
            Text(
              'Dati personali',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),

            const SizedBox(height: 10),

            Text('Data di nascita: $dataNascita'),
            Text('Via: $via'),
            Text('Città: $citta'),
            Text('Provincia: $provincia'),
            Text('CAP: $cap'),

            const SizedBox(height: 30),

            // PULSANTI AZIENDALI
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Pulsante Modifica
                ElevatedButton.icon(
                  onPressed: () {
                    context.go(
                      '/edit-profile',
                    ); // apre la schermata di modifica
                  },
                  icon: const Icon(Icons.edit),
                  label: const Text('Modifica'),
                ),

                // Pulsante Logout
                ElevatedButton.icon(
                  onPressed: () {
                    AuthService.currentUser = null; // svuota l’utente
                    context.go('/login'); // torna al login
                  },

                  icon: const Icon(Icons.logout),
                  label: const Text('Logout'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context)
                        .colorScheme
                        .errorContainer,
                    foregroundColor: Theme.of(context)
                        .colorScheme
                        .onErrorContainer,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
