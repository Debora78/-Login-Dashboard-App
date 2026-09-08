import 'package:flutter/material.dart';

// Questo è il bottone principale dell'app.
// Lo useremo per tutte le azioni importanti (Login, Salva, Conferma, ecc.)
class PrimaryButton extends StatelessWidget {
  // Testo da mostrare nel bottone.
  final String text;

  // Funzione da eseguire quando il bottone viene premuto.
  final VoidCallback onPressed;

  const PrimaryButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // Larghezza massima: il bottone si espande orizzontalmente.
      width: double.infinity,

      child: ElevatedButton(
        // Funzione chiamata al click.
        onPressed: onPressed,

        // Stile del bottone.
        style: ElevatedButton.styleFrom(
          // Colore di sfondo preso dal tema Material 3.
          backgroundColor: Theme.of(context).colorScheme.primary,

          // Colore del testo e delle icone.
          foregroundColor: Theme.of(context).colorScheme.onPrimary,

          // Padding interno per rendere il bottone più elegante.
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),

          // Bordi arrotondati moderni.
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),

          // Elevazione per dare profondità.
          elevation: 3,
        ),

        // Contenuto del bottone: solo testo.
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18, // testo più grande
            fontWeight: FontWeight.w600, // leggermente più marcato
          ),
        ),
      ),
    );
  }
}
