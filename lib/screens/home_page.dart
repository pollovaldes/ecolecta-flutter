import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.star),
                label: const Text('Explora tus beneficios')),
            const SizedBox(
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Text(
                    'Accesos rápidos',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        SizedBox(
                          width: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              children: <Widget>[
                                IconButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, '/about_materials');
                                  },
                                  icon: const Icon(Icons.local_bar),
                                ),
                                const Text('Materiales')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              children: <Widget>[
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.workspace_premium)),
                                const Text('Objetivos')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              children: <Widget>[
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.lightbulb)),
                                const Text('Consejos')
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        SizedBox(
                          width: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              children: <Widget>[
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.route)),
                                const Text('Rutas')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              children: <Widget>[
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.groups)),
                                const Text('Comunidad')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 100,
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              children: <Widget>[
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.help)),
                                const Text(
                                  'Sobre nosotros',
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            ElevatedButton(
                onPressed: requestCameraPermission,
                child: const Text('Permitir acceder a la cámara'))
          ],
        ),
      ),
    );
  }

  void requestCameraPermission() async {
    /// status can either be: granted, denied, restricted or permanentlyDenied
    var status = await Permission.camera.status;
    if (status.isGranted) {
      print("Permission is granted");
    } else if (status.isDenied) {
      // We didn't ask for permission yet or the permission has been denied before but not permanently.
      if (await Permission.camera.request().isGranted) {
        // Either the permission was already granted before or the user just granted it.
        print("Permission was granted");
      }
    }
  }
}
