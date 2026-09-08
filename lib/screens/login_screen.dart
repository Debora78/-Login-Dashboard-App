// Importiamo i widget base di Flutter.
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// Importiamo il layout globale (Navbar + Footer).
import 'package:login_dashboard_app/components/app_layout.dart';

// Importiamo i componenti riutilizzabili.
import 'package:login_dashboard_app/components/custom_text_field.dart';
import 'package:login_dashboard_app/components/primary_button.dart';

// Importiamo il modello utente e il servizio di autenticazione.
import 'package:login_dashboard_app/models/user.dart';
import 'package:login_dashboard_app/services/auth_service.dart';

// La schermata di "login/registrazione" dei dati utente.
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

// Usiamo uno StatefulWidget per gestire lo stato dei campi del form.
class _LoginScreenState extends State<LoginScreen> {
  // Chiave del form per la validazione.
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Controller per ogni campo del form.
  final _nomeController = TextEditingController();
  final _cognomeController = TextEditingController();
  final _dataNascitaController = TextEditingController();
  final _viaController = TextEditingController();
  final _cittaController = TextEditingController();
  final _provinciaController = TextEditingController();
  final _capController = TextEditingController();

  @override
  void dispose() {
    // Rilasciamo i controller quando il widget viene distrutto.
    _nomeController.dispose();
    _cognomeController.dispose();
    _dataNascitaController.dispose();
    _viaController.dispose();
    _cittaController.dispose();
    _provinciaController.dispose();
    _capController.dispose();
    super.dispose();
  }

  // Metodo chiamato quando si preme il bottone "Invia".
  void _onLoginPressed() {
    // Controlliamo se il form è valido.
    if (_formKey.currentState!.validate()) {
      // Creiamo l'oggetto User con i dati inseriti.
      final user = User(
        nome: _nomeController.text,
        cognome: _cognomeController.text,
        dataNascita: _dataNascitaController.text,
        via: _viaController.text,
        citta: _cittaController.text,
        provincia: _provinciaController.text,
        cap: _capController.text,
      );

      // Salviamo l'utente nell'AuthService.
      AuthService.login(user);

      // Navighiamo verso la pagina profilo.
      context.go('/profile');
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppLayout(
      // Titolo mostrato nella Navbar.
      title: 'Dati utente',

      // Contenuto della pagina: il form centrato.
      child: Center(
        // Scroll per evitare problemi su schermi piccoli.
        child: SingleChildScrollView(
          child: Form(
            key: _formKey, // colleghiamo la chiave al form.
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // TITOLO DEL FORM
                const Text(
                  'Inserisci i tuoi dati',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 24),

                // CAMPO NOME
                CustomTextField(
                  controller: _nomeController,
                  label: 'Nome',
                  hintText: 'Inserisci il tuo nome',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Per favore inserisci il tuo nome';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 16),

                // CAMPO COGNOME
                CustomTextField(
                  controller: _cognomeController,
                  label: 'Cognome',
                  hintText: 'Inserisci il tuo cognome',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Per favore inserisci il tuo cognome';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 16),

                // CAMPO DATA DI NASCITA
                CustomTextField(
                  controller: _dataNascitaController,
                  label: 'Data di nascita',
                  hintText: 'Es: 12/05/1995',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Per favore inserisci la tua data di nascita';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 16),

                // CAMPO VIA
                CustomTextField(
                  controller: _viaController,
                  label: 'Via',
                  hintText: 'Es: Via Roma 12',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Per favore inserisci la via';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 16),

                // CAMPO CITTÀ
                CustomTextField(
                  controller: _cittaController,
                  label: 'Città',
                  hintText: 'Es: Tarquinia',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Per favore inserisci la città';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 16),

                // CAMPO PROVINCIA
                CustomTextField(
                  controller: _provinciaController,
                  label: 'Provincia',
                  hintText: 'Es: VT',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Per favore inserisci la provincia';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 16),

                // CAMPO CAP
                CustomTextField(
                  controller: _capController,
                  label: 'CAP',
                  hintText: 'Es: 01016',
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Per favore inserisci il CAP';
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 24),

                // BOTTONE "INVIA"
                PrimaryButton(text: 'Invia', onPressed: _onLoginPressed),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
