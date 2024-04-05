import 'dart:async';

Future<void> contarRegressivamente(int segundos) async {
  // Itera sobre a contagem regressiva
  for (int i = segundos; i > 0; i--) {
    // Aguarda 1 segundo
    await Future.delayed(Duration(seconds: 1));
    // Imprime o tempo restante
    print('Tempo restante: $i segundos');
  }
}

void main() {
  print('Iniciando lançamento');

  // Define a duração da contagem regressiva em segundos
  int segundosParaLancamento = 10;

  // Inicia a contagem regressiva
  contarRegressivamente(segundosParaLancamento).then((_) {
    // Após a contagem regressiva, imprime que o foguete foi lançado
    print('Foguete lançado!');
  });
}
