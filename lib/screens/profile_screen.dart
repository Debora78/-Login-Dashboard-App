import 'package:flutter/material.dart';
import 'package:login_dashboard_app/components/app_layout.dart';
import 'package:login_dashboard_app/components/profile_card.dart';
import 'package:login_dashboard_app/services/auth_service.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Recuperiamo l'utente salvato durante il login.
    final user = AuthService.getUser();

    // Mostriamo SEMPRE la pagina profilo con il titolo.
    return AppLayout(
      title: 'Profilo',

      // Se l'utente non è registrato, mostriamo un messaggio elegante.
      child: user == null
          ? const Center(
              child: Text(
                'Nessun utente registrato.\nCompila il form per creare il profilo.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
            )
          // Se l'utente esiste, mostriamo la card con i dati.
          : ProfileCard(
              nome: user.nome,
              cognome: user.cognome,
              dataNascita: user.dataNascita,
              via: user.via,
              citta: user.citta,
              provincia: user.provincia,
              cap: user.cap,
            ),
    );
  }
}
