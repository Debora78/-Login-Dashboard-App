// Importiamo il materiale base di Flutter (widget, temi, ecc.)
import 'package:flutter/material.dart';

// Importiamo GoRouter per poter usare la navigazione basata su URL (context.go).
import 'package:go_router/go_router.dart';

// La Navbar è un widget riutilizzabile che implementa PreferredSizeWidget,
// così può essere usata direttamente come appBar in un Scaffold.
class Navbar extends StatelessWidget implements PreferredSizeWidget {
  // Titolo da mostrare al centro della navbar (es. "Dashboard", "Profilo", ecc.).
  final String title;

  // Costruttore della Navbar: richiede il titolo.
  const Navbar({super.key, required this.title});

  // Questo getter definisce l'altezza preferita della navbar.
  // Viene usato da Scaffold per sapere quanto spazio occupa l'appBar.
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  // Metodo build: costruisce la UI della navbar.
  @override
  Widget build(BuildContext context) {
    return AppBar(
      // Impostiamo il titolo della navbar, passato dal costruttore.
      title: Text(title),

      // Centriamo il titolo nella AppBar (opzionale, ma spesso più elegante).
      centerTitle: true,

      // Usiamo il colorScheme del tema globale per mantenere coerenza visiva.
      backgroundColor: Theme.of(context).colorScheme.primary,

      // Il colore del testo e delle icone viene preso dal colorScheme onPrimary.
      foregroundColor: Theme.of(context).colorScheme.onPrimary,

      // Aggiungiamo una leggera ombra sotto la navbar per separarla dal contenuto.
      elevation: 2,

      // Azioni sulla destra della navbar: icone cliccabili.
      actions: [
        // Icona per andare alla Dashboard.
        IconButton(
          // Icona grafica: una home.
          icon: const Icon(Icons.dashboard),

          // Tooltip: testo mostrato quando si tiene premuto o si passa sopra.
          tooltip: 'Vai alla Dashboard',

          // onPressed: cosa succede quando si clicca l’icona.
          onPressed: () {
            // context.go() è il metodo di GoRouter per navigare verso una rotta.
            // Qui navighiamo verso la rotta '/dashboard'.
            context.go('/dashboard');
          },
        ),

        // Icona per andare alla pagina Profilo.
        IconButton(
          // Icona grafica: una persona.
          icon: const Icon(Icons.person),

          // Tooltip: testo di aiuto.
          tooltip: 'Vai al Profilo',

          // Quando clicchiamo, navighiamo verso '/profile'.
          onPressed: () {
            context.go('/profile');
          },
        ),

        // Icona per andare alla pagina Login (es. logout simulato).
        IconButton(
          // Icona grafica: una porta con freccia (logout).
          icon: const Icon(Icons.logout),

          // Tooltip: testo di aiuto.
          tooltip: 'Vai al Login',

          // Quando clicchiamo, navighiamo verso '/login'.
          onPressed: () {
            context.go('/login');
          },
        ),
      ],
    );
  }
}
