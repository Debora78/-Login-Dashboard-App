// Importiamo il materiale base di Flutter.
import 'package:flutter/material.dart';

// Il Footer è un widget riutilizzabile che verrà mostrato
// in fondo ad ogni pagina tramite AppLayout.
class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Altezza fissa del footer.
      height: 50,

      // Usiamo il colore "surface" del tema Material 3
      // per ottenere un footer chiaro e moderno.
      color: Theme.of(context).colorScheme.surface,

      // Aggiungiamo un bordo superiore molto leggero
      // per separare visivamente il footer dal contenuto.
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Theme.of(context).colorScheme.outlineVariant,
              width: 1,
            ),
          ),
        ),

        // Centriamo il contenuto del footer.
        child: Center(
          child: Text(
            // Testo del footer.
            '© 2026 Login Dashboard App — Tutti i diritti riservati',

            // Stile del testo: colore coerente con il tema.
            style: TextStyle(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
              fontSize: 12,
            ),
          ),
        ),
      ),
    );
  }
}
