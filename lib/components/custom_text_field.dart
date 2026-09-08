import 'package:flutter/material.dart';

// Questo è il campo di testo riutilizzabile che useremo in tutto il progetto.
// È compatibile con i parametri che hai usato nel LoginScreen.
class CustomTextField extends StatelessWidget {
  // Controller per gestire il testo inserito.
  final TextEditingController controller;

  // Etichetta sopra il campo.
  final String label;

  // Testo di suggerimento dentro il campo.
  final String hintText;

  // Tipo di tastiera (email, numero, testo, ecc.)
  final TextInputType keyboardType;

  // Se true, nasconde il testo (password).
  final bool obscureText;

  // Funzione di validazione del campo.
  final String? Function(String?)? validator;

  const CustomTextField({
    super.key,
    required this.controller,
    required this.label,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // Colleghiamo il controller.
      controller: controller,

      // Tipo di tastiera.
      keyboardType: keyboardType,

      // Nascondiamo il testo se è una password.
      obscureText: obscureText,

      // Validazione del campo.
      validator: validator,

      decoration: InputDecoration(
        // Etichetta sopra il campo.
        labelText: label,

        // Testo di suggerimento dentro il campo.
        hintText: hintText,

        // Il Bordo arrotondato moderno.
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),

        // Il Colore del bordo quando il campo è attivo.
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.primary,
            width: 2,
          ),
        ),
      ),
    );
  }
}
