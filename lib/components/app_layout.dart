// Importiamo i widget base di Flutter.
import 'package:flutter/material.dart';

// Importiamo la Navbar che abbiamo già creato.
import 'navbar.dart';

// Importeremo il Footer quando lo creeremo.
import 'footer.dart';

// AppLayout è il layout globale dell'app.
// È IDENTICO al concetto di <AppLayout> in React.
// Contiene: Navbar + Footer + Contenuto della pagina.
class AppLayout extends StatelessWidget {
  // Titolo da mostrare nella Navbar.
  final String title;

  // Contenuto della pagina (equivalente a <Outlet /> in React).
  final Widget child;

  // Costruttore: richiede titolo e contenuto.
  const AppLayout({super.key, required this.title, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // NAVBAR: viene caricata UNA SOLA VOLTA per ogni pagina.
      // Il titolo cambia in base alla pagina.
      appBar: Navbar(title: title),

      // BODY: qui inseriamo il contenuto della pagina.
      // È l'equivalente di <Outlet /> in React.
      body: Padding(
        // Padding per dare aria al contenuto.
        padding: const EdgeInsets.all(16.0),
        child: child,
      ),

      // FOOTER: verrà creato dopo, ma lo colleghiamo già.
      bottomNavigationBar: const Footer(),
    );
  }
}
