// Importiamo i widget base di Flutter.
import 'package:flutter/material.dart';

// Importiamo il servizio di autenticazione che contiene l'utente corrente.
import 'package:login_dashboard_app/services/auth_service.dart';

// Importiamo il modello User per ricreare l'oggetto aggiornato.
import 'package:login_dashboard_app/models/user.dart';

// Importiamo GoRouter per la navigazione.
import 'package:go_router/go_router.dart';

// Schermata per modificare i dati del profilo utente.
class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

// StatefulWidget perché dobbiamo gestire i controller dei campi di testo.
class _EditProfileScreenState extends State<EditProfileScreen> {
  // Controller per ogni campo del form, inizializzati in initState.
  late TextEditingController nomeController;
  late TextEditingController cognomeController;
  late TextEditingController dataNascitaController;
  late TextEditingController viaController;
  late TextEditingController cittaController;
  late TextEditingController provinciaController;
  late TextEditingController capController;

  @override
  void initState() {
    super.initState();

    // Recuperiamo l'utente corrente da AuthService.
    final user = AuthService.getUser();

    // Inizializziamo i controller con i valori esistenti (se presenti).
    nomeController = TextEditingController(text: user?.nome ?? '');
    cognomeController = TextEditingController(text: user?.cognome ?? '');
    dataNascitaController = TextEditingController(
      text: user?.dataNascita ?? '',
    );
    viaController = TextEditingController(text: user?.via ?? '');
    cittaController = TextEditingController(text: user?.citta ?? '');
    provinciaController = TextEditingController(text: user?.provincia ?? '');
    capController = TextEditingController(text: user?.cap ?? '');
  }

  @override
  void dispose() {
    // Rilasciamo tutti i controller quando la schermata viene distrutta.
    nomeController.dispose();
    cognomeController.dispose();
    dataNascitaController.dispose();
    viaController.dispose();
    cittaController.dispose();
    provinciaController.dispose();
    capController.dispose();
    super.dispose();
  }

  // Metodo chiamato quando si preme "Salva modifiche".
  void _saveProfile() {
    // Creiamo un nuovo oggetto User con i dati aggiornati.
    final updatedUser = User(
      nome: nomeController.text,
      cognome: cognomeController.text,
      dataNascita: dataNascitaController.text,
      via: viaController.text,
      citta: cittaController.text,
      provincia: provinciaController.text,
      cap: capController.text,
    );

    // Salviamo l'utente aggiornato nell'AuthService.
    AuthService.login(updatedUser);

    // Torniamo alla schermata profilo per vedere i dati aggiornati.
    context.go('/profile');
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold base con AppBar e corpo della pagina.
    return Scaffold(
      appBar: AppBar(
        // Titolo della schermata.
        title: const Text('Modifica Profilo'),
      ),
      body: Padding(
        // Padding intorno al contenuto.
        padding: const EdgeInsets.all(20),
        // Usiamo ListView per permettere lo scroll se necessario.
        child: ListView(
          children: [
            // Campo Nome.
            TextField(
              controller: nomeController,
              decoration: const InputDecoration(labelText: 'Nome'),
            ),
            // Campo Cognome.
            TextField(
              controller: cognomeController,
              decoration: const InputDecoration(labelText: 'Cognome'),
            ),
            // Campo Data di nascita.
            TextField(
              controller: dataNascitaController,
              decoration: const InputDecoration(labelText: 'Data di nascita'),
            ),
            // Campo Via.
            TextField(
              controller: viaController,
              decoration: const InputDecoration(labelText: 'Via'),
            ),
            // Campo Città.
            TextField(
              controller: cittaController,
              decoration: const InputDecoration(labelText: 'Città'),
            ),
            // Campo Provincia.
            TextField(
              controller: provinciaController,
              decoration: const InputDecoration(labelText: 'Provincia'),
            ),
            // Campo CAP.
            TextField(
              controller: capController,
              decoration: const InputDecoration(labelText: 'CAP'),
            ),

            // Spazio prima del bottone.
            const SizedBox(height: 30),

            // Bottone per salvare le modifiche.
            ElevatedButton(
              onPressed: _saveProfile,
              child: const Text('Salva modifiche'),
            ),
          ],
        ),
      ),
    );
  }
}
