import 'dart:async';

Future<void> baixarImagens(List<String> urls) async {
  print('Baixando imagens...');

  // Loop através das URLs das imagens
  for (int i = 0; i < urls.length; i++) {
    var url = urls[i];
    String nomeImagem = 'imagem${i + 1}.jpg'; // Nome da imagem baseado no índice

    // Simulação do download da imagem
    await Future.delayed(Duration(seconds: 2));

    // Imprime mensagem informando que a imagem foi baixada com sucesso
    print('Imagem $nomeImagem baixada com sucesso!');
  }

  // Imprime mensagem informando que o download foi concluído
  print('Download concluído!');
}

Future<void> main() async {
  List<String> urls = [
    'https://i.pinimg.com/564x/78/d6/8a/78d68a5864e2b229374dfc2df66ab31b.jpg',
    'https://i.pinimg.com/736x/d4/49/8c/d4498c59b099434845b2a2cb07bb9c4b.jpg',
    'hhttps://i.pinimg.com/736x/95/76/33/957633abfc5b64ebba0e5af7d4d10767.jpg',
  ];

  await baixarImagens(urls);
}
