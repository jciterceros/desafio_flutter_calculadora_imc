import 'package:desafio_flutter_calculadora_imc/controllers/pessoa_controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PessoaController', () {
    final controller = PessoaController();

    test('Deve criar uma pessoa corretamente', () {
      final pessoa = controller.criarPessoa('João', 70, 1.75);
      expect(pessoa.nome, 'João');
      expect(pessoa.peso, 70);
      expect(pessoa.altura, 1.75);
    });

    test('Deve classificar corretamente o IMC', () {
      final pessoa = controller.criarPessoa('João', 70, 1.75);
      final classificacao = controller.obterClassificacao(pessoa);
      expect(classificacao, 'Saudável');
    });
  });
}
