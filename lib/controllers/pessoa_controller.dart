import 'package:desafio_flutter_calculadora_imc/models/pessoa.dart';
import 'package:desafio_flutter_calculadora_imc/services/classificacao_service.dart';

class PessoaController {
  Pessoa criarPessoa(String nome, double peso, double altura) {
    return Pessoa(nome, peso, altura);
  }

  String obterClassificacao(Pessoa pessoa) {
    return ClassificacaoSaude.classificar(pessoa.imc);
  }
}
