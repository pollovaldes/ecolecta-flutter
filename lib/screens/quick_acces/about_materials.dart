import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutMaterials extends StatelessWidget {
  const AboutMaterials({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Más sobre Materiales'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              RichText(
                text: const TextSpan(
                  text: 'Plásticos\n',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              RichText(
                text: const TextSpan(
                  text:
                      'Saber los diferentes tipos de plásticos es clave para poder reciclarlos adecuadamente. Cada uno tiene su propio número de identificación y requiere un proceso de reciclaje específico. Para obtener más información, dirígete a la pestaña de escaneo, donde encontrarás instrucciones detalladas sobre cómo reciclar cada producto. ¡Hagamos nuestra parte para cuidar nuestro planeta!\n\n',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://images.pexels.com/photos/802221/pexels-photo-802221.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                    placeholder: (context, url) =>
                        const CupertinoActivityIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
              const Divider(
                height: 30,
              ),
              RichText(
                text: const TextSpan(
                  text: 'Papel\n',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              RichText(
                text: const TextSpan(
                  text:
                      'El papel es uno de los materiales más comunes y fáciles de reciclar. Los productos de papel que se pueden reciclar incluyen cartón, periódicos, papel de oficina, sobres y bolsas de papel. Sin embargo, el papel encerado o laminado no se puede reciclar y debe desecharse adecuadamente.\n\n',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://stakeholders.com.pe/wp-content/uploads/2019/01/reciclaje-de-papel-1.jpg',
                    placeholder: (context, url) =>
                        const CupertinoActivityIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
              const Divider(
                height: 30,
              ),
              RichText(
                text: const TextSpan(
                  text: 'Cartón\n',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              RichText(
                text: const TextSpan(
                  text:
                      '¡El cartón es un material muy versátil y fácil de reciclar! Es comúnmente encontrado en cajas de cartón como las de envío y en empaques de alimentos. Además, ¡se puede usar para crear papel reciclado!\n\n',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://www.smv.es/wp-content/uploads/2019/10/como-es-proceso-reciclaje-carton.jpg',
                    placeholder: (context, url) =>
                        const CupertinoActivityIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
              const Divider(
                height: 30,
              ),
              RichText(
                text: const TextSpan(
                  text: 'Vidrio\n',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              RichText(
                text: const TextSpan(
                  text:
                      'El vidrio es un material 100% reciclable que puede ser reciclado una y otra vez sin perder calidad. Es común encontrar vidrio en botellas y frascos para alimentos. Recuerda retirar las tapas metálicas antes de reciclar el vidrio.\n\n',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://blog.oxfamintermon.org/wp-content/uploads/2016/09/reciclar-vidrio-1.jpg',
                    placeholder: (context, url) =>
                        const CupertinoActivityIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
              const Divider(
                height: 30,
              ),
              RichText(
                text: const TextSpan(
                  text: 'Baterías\n',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              RichText(
                text: const TextSpan(
                  text:
                      'Es importante desechar las baterías de forma adecuada, ya que no se pueden reciclar junto con otros materiales. Las baterías recargables, como las de los teléfonos móviles y las laptops, se pueden reciclar en tiendas de electrónica y otros lugares de reciclaje. Las baterías alcalinas y de zinc-carbono deben desecharse en un centro de eliminación de residuos.\n\n',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://aseca.com/wp-content/uploads/2020/05/Proceso_de_reciclaje_pilas.jpg',
                    placeholder: (context, url) =>
                        const CupertinoActivityIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
              const Divider(
                height: 30,
              ),
              RichText(
                text: const TextSpan(
                  text: 'Aluminio\n',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              RichText(
                text: const TextSpan(
                  text:
                      'El aluminio es uno de los materiales más valiosos para reciclar debido a su durabilidad y su capacidad para conservar sus propiedades después de múltiples reciclajes. El aluminio se encuentra comúnmente en latas de bebidas y alimentos. Asegúrate de aplastar las latas antes de reciclarlas para ahorrar espacio.\n\n',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://www.elsudcaliforniano.com.mx/local/municipios/o6ss84-reciclaje-de-latas-de-aluminio/alternates/LANDSCAPE_768/Reciclaje%20de%20latas%20de%20aluminio',
                    placeholder: (context, url) =>
                        const CupertinoActivityIndicator(),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
