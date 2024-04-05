import 'dart:async';

// Função assíncrona que simula a consulta à API com o código de rastreamento
Future<String> consultarAPI(String codigoRastreamento) async {
  // Simula um atraso de 2 segundos para simular a consulta à API
  await Future.delayed(Duration(seconds: 2));

  // Simulação de consulta a API com código de rastreamento
  if (codigoRastreamento == 'ABC123') {
    return 'Em trânsito'; // Retorna 'Em trânsito' se o código for 'ABC123'
  } else if (codigoRastreamento == 'XYZ789') {
    return 'Entregue'; // Retorna 'Entregue' se o código for 'XYZ789'
  } else if (codigoRastreamento == 'DEF456') {
    return 'Atrasado'; // Retorna 'Atrasado' se o código for 'DEF456'
  } else {
    return 'Código de rastreamento inválido'; // Retorna mensagem de erro para códigos inválidos
  }
}

// Função assíncrona que verifica o status de entrega do pacote
Future<void> verificarStatusEntrega(String codigoRastreamento) async {
  // Chama a função para consultar a API e aguarda o resultado
  String status = await consultarAPI(codigoRastreamento);

  // Imprime o status de entrega do pacote
  print('Status de entrega do pacote $codigoRastreamento: $status');
}

void main() {
  // Inicia o programa
  print('Inicio');

  // Verifica o status de entrega de três pacotes diferentes
  verificarStatusEntrega('ABC123');
  verificarStatusEntrega('XYZ789');
  verificarStatusEntrega('DEF456');

  // Fim do programa
  print('Fim');
}
