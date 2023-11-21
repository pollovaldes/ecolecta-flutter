import 'package:flutter/material.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 0.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 50.0),
                  child: Image.asset(context.isDarkMode
                      ? 'assets/ecolecta_logo_with_text_light.png'
                      : 'assets/ecolecta_logo_with_text_dark.png'),
                ),
                const Text(
                  'Iniciar Sesión',
                  style: TextStyle(fontSize: 20.0, letterSpacing: 2.0),
                ),
                const Divider(height: 60.0, thickness: 0.3),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    autofillHints: [AutofillHints.email],
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Correo Electrónico',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
                  child: TextField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    autofillHints: [AutofillHints.password],
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Contraseña',
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/home');
                    },
                    child: const Text('Iniciar Sesión')),
                TextButton(
                    onPressed: () {},
                    child: const Text('¿No tienes una cuenta? ¡Regístrate!')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

extension DarkMode on BuildContext {
  /// is dark mode currently enabled?
  bool get isDarkMode {
    final brightness = MediaQuery.of(this).platformBrightness;
    return brightness == Brightness.dark;
  }
}
