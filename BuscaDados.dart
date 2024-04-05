import 'dart:async';

// Função assíncrona para buscar dados
Future<void> buscarDados() async {
  // Início da busca
  print('Iniciando busca de dados...');

  // Simulação de espera (meio da busca)
  await Future.delayed(Duration(seconds: 2));
  print('Meio da busca...');

  // Simulação de espera (fim da busca)
  await Future.delayed(Duration(seconds: 2));
  print('Fim da busca. Dados encontrados!');
}

// Função principal
void main() {
  // Chamada da função assíncrona
  buscarDados();
}
